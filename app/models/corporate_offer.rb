class CorporateOffer < ApplicationRecord
  validates :title, presence: true
  validates :descritption, presence: true
  belongs_to :user
end
