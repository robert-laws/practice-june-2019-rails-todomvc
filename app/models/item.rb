class Item < ApplicationRecord
  belongs_to :list

  # after_validation do |item|
  #   item.destroy if item.description.blank?
  # end

  validates :description,
    presence: true
end