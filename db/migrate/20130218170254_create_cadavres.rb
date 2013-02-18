class CreateCadavres < ActiveRecord::Migration
  def change
    create_table :cadavres do |t|
      t.string :title
      t.text :content
      t.references :user

      t.timestamps
    end
    add_index :cadavres, :user_id
  end
end
