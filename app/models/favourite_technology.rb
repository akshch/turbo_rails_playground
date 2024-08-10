class FavouriteTechnology < ApplicationRecord
  belongs_to :technology

  attr_accessor :touch
  delegate :name, to: :technology
end
