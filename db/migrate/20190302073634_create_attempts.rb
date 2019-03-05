class CreateAttempts < ActiveRecord::Migration[5.2]
  def change
    create_table :attempts do |t|
      t.string :answer
      t.boolean :correct

      t.timestamps
    end
  end
end
