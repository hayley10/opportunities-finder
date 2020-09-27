class District < ApplicationRecord
  belongs_to :city
  validates :city_id, presence: true
  validates :name, presence: true
end
