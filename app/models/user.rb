class User < ActiveRecord::Base
<<<<<<< HEAD
  authenticates_with_sorcery!
<<<<<<< HEAD
  attr_accessible :username, :email, :password, :password_confirmation
  
  has_many :sentences
  has_many :cadavres

  validates_length_of :password, :minimum => 3, :message => "password must be at least 3 characters long", :if => :password
  validates_confirmation_of :password, :message => "should match confirmation", :if => :password
end
=======
=======
  authenticates_with_sorcery! do |config|
    config.authentications_class = Authentication
  end

  has_many :authentications, :dependent => :destroy
  accepts_nested_attributes_for :authentications

>>>>>>> facebook connect
  attr_accessible :avatar, :crypted_password, :email, :salt, :score, :username, :password, :password_confirmation

  validates_length_of :password, :minimum => 3, :message => "password must be at least 3 characters long", :if => :password
  validates_confirmation_of :password, :message => "should match confirmation", :if => :password
end
>>>>>>> initial commit with user auth
