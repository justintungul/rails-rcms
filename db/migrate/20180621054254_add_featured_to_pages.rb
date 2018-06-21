class AddFeaturedToPages < ActiveRecord::Migration[5.2]
  def change
    add_column :pages, :is_featured, :boolean
  end
end
