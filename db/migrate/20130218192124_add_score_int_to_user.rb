class AddScoreIntToUser < ActiveRecord::Migration
  def up
    add_column :users, :score, :int, :default => 0
  end

  def down
    remove_column :users, :score
  end
end
