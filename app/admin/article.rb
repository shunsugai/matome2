ActiveAdmin.register Article do
  permit_params :title, :url, :posted_at, :blog_id

  controller do
    def scoped_collection
      Article.unscoped
    end
  end
end
