class List < ApplicationRecord
  has_many :items

  validates :name,
    presence: true

  def name=(value)
    value = value.downcase
    super(value)
  end
end