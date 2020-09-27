class Opportunity < ApplicationRecord
  belongs_to :district
  belongs_to :city
  validates :city_id, presence: true
  validates :district_id, presence: true
  validates :address, presence: true
  validates :size, presence: true
  validates :listing_price, presence: true
end
