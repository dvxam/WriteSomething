class User < ActiveRecord::Base
  authenticates_with_sorcery!
<<<<<<< HEAD
  attr_accessible :username, :email, :password, :password_confirmation
  
  has_many :sentences
  has_many :cadavres

  validates_length_of :password, :minimum => 3, :message => "password must be at least 3 characters long", :if => :password
  validates_confirmation_of :password, :message => "should match confirmation", :if => :password
end
=======
  attr_accessible :avatar, :crypted_password, :email, :salt, :score, :username, :password, :password_confirmation

  validates_length_of :password, :minimum => 3, :message => "password must be at least 3 characters long", :if => :password
  validates_confirmation_of :password, :message => "should match confirmation", :if => :password
end
>>>>>>> initial commit with user auth
