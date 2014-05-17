ActiveAdmin.register Category do
  permit_params :name, :show

  controller do
    def scoped_collection
      Category.unscoped
    end
  end
end
