class District < ApplicationRecord
  belongs_to :city
  has_many :opportunities
  validates :city_id, presence: true
  validates :name, presence: true
end
