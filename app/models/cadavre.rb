class Cadavre < ActiveRecord::Base
  attr_accessible :content, :title, :user_id, :nb_max_of_sentences
  
  belongs_to :user
  has_many :sentences
end
