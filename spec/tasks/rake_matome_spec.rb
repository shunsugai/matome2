require 'spec_helper'
require 'rake'

describe 'matome' do
  before :all do
    Rake.application.rake_require "tasks/matome"
    Rake::Task.define_task(:environment)
  end

  describe 'matome:remove' do
    before do
      FactoryGirl.create(:article_posted_at_a_week_ago)
      FactoryGirl.create(:article_posted_at_6_days_ago)
      FactoryGirl.create(:article_posted_at_a_day_ago)
    end

    let :run_rake_task do
      Rake::Task['matome:remove'].reenable
      Rake.application.invoke_task 'matome:remove'
    end

    it { expect { run_rake_task }.not_to raise_exception }

    it 'remove entries 1 week ago' do
      run_rake_task
      expect(Article.all.size).to eq 2
    end
  end

  describe 'matome:insert' do
    before do
      blog = FactoryGirl.create(:blog_for_insert_task)
      request_url = blog.rss
      stub_request(:get, request_url).to_return(:status => 200, :body => fixture('index.rdf'))
    end

    let :run_rake_task do
      Rake::Task['matome:insert'].reenable
      Rake.application.invoke_task 'matome:insert'
    end

    specify 'Article is inserted' do
      run_rake_task
      expect(Article.all.size).to eq 5
    end
  end
end
