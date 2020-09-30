class Opportunity < ApplicationRecord
  belongs_to :district
  belongs_to :city
  validates :city_id, presence: true
  validates :district_id, presence: true
  validates :address, presence: true
  validates :size, presence: true, numericality: true 
  validates :rooms, numericality: true, allow_blank: true
  validates :floor, numericality: true, allow_blank: true
  validates :listing_price, presence: true, numericality: true
  validates :estimated_price, numericality: true, allow_blank: true
  validates :description, length: { maximum: 100 }
end
