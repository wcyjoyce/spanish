class RenameTypeInCategories < ActiveRecord::Migration[5.2]
  def change
    rename_column :categories, :type, :subclass
  end
end
