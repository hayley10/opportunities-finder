class City < ApplicationRecord
    has_many :districts
    has_many :opportunities
    validates :name, presence: true  
end
