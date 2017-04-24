class Employee < ApplicationRecord
  belongs_to :user
  has_many :trips, :dependent => :destroy
end
