class User < ApplicationRecord
  has_one :employee
  before_save { self.username = username.downcase}

  validates :username, presence:true, uniqueness: { case_sensitive: false}

  has_secure_password


  validates :password, presence: true, length: { minimum: 6}, allow_nil: true


end
