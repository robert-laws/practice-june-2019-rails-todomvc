# frozen_string_literal: true

class List < ApplicationRecord
  def name=(value)
    value = value.downcase
    super(value)
  end
end
