require 'spec_helper'
require 'rake'

describe 'matome' do
  before :all do
    Rake.application.rake_require "tasks/matome"
    Rake::Task.define_task(:environment)
  end

  describe 'matome:remove' do
    before do
      FactoryGirl.create(:article)
    end

    let :run_rake_task do
      Rake::Task['matome:remove'].reenable
      Rake.application.invoke_task 'matome:remove'
    end

    it { expect { run_rake_task }.not_to raise_exception }

    it 'remove entries 1 week ago' do
      run_rake_task
      expect(Article.all.size).to eq (0)
    end
  end
end
