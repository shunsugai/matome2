ActiveAdmin.register Blog do
  permit_params :name, :url, :rss, :category_id

  controller do
    def scoped_collection
      Blog.unscoped
    end
  end
end
