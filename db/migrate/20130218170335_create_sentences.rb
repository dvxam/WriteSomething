class CreateSentences < ActiveRecord::Migration
  def change
    create_table :sentences do |t|
      t.string :content
      t.references :user
      t.references :cadavre

      t.timestamps
    end
    add_index :sentences, :user_id
    add_index :sentences, :cadavre_id
  end
end
