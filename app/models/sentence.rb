class Sentence < ActiveRecord::Base
  attr_accessible :content, :user_id, :cadavre_id
  
  validates :content, :length => { :minimum => 3 }
  
  belongs_to :user
  belongs_to :cadavre
end
