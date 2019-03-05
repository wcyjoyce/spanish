class AddLanguagesInWords < ActiveRecord::Migration[5.2]
  def change
    rename_column :words, :word, :english
    add_column :words, :spanish, :string
  end
end
