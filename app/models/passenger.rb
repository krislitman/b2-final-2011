class Passenger < ApplicationRecord
  validates :name, presence: true
  validates :age, presence: true
  has_many :passenger_flights
  has_many :flights, through: :passenger_flights

  def self.adult_average_age
    where('age >= ?', 18).average(:age)
  end
end
