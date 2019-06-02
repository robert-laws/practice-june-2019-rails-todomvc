# frozen_string_literal: true

class List < ApplicationRecord
  has_many :items, dependent: :destroy

  validates :name,
            presence: true

  def name=(value)
    value = value.downcase
    super(value)
  end
end
