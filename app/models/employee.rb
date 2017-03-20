class Employee < ApplicationRecord
  belongs_to :user

  validates :phone_number,
    length: {maximum:11}
end
