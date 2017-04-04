class Trip < ApplicationRecord
  belongs_to :employee
  has_many :day_tables
end
