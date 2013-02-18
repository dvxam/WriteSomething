class AddMaxSentenceNumberIntToCadavre < ActiveRecord::Migration
  def up
    add_column :cadavres, :nb_max_of_sentences, :int, :default => 10
  end

  def down
    remove_column :cadavres, :nb_max_of_sentences
  end
end
