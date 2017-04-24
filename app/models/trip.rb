class Trip < ApplicationRecord
  belongs_to :employee
  has_many :purchases, :dependent => :destroy
end
