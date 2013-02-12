class AddAvatarAndScoreToUser < ActiveRecord::Migration
  def change
    add_column :users, :avatar, :string
    add_column :users, :score, :int
  end
end
