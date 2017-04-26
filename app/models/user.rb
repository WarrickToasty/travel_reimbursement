class User < ApplicationRecord
  has_one :employee, :dependent => :destroy
  before_save { self.username = username.downcase}

  validates :username, presence:true, uniqueness: { case_sensitive: false}

  has_secure_password


  validates :password, presence: true, length: { minimum: 6}, allow_nil: true
  validates :password, :confirmation => true

end
