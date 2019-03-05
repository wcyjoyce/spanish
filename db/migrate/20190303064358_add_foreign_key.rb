class AddForeignKey < ActiveRecord::Migration[5.2]
  def change
    add_reference :words, :category, foreign_key: true
    add_reference :tests, :category, foreign_key: true
    add_reference :attempts, :test, foreign_key: true
  end
end
