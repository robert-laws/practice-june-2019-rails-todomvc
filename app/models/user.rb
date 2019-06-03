class User < ApplicationRecord

  EMAIL_REGEX = /\A[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}\Z/i.freeze

  validates :email,
    presence: { message: "cannot be blank." },
    format: { with: EMAIL_REGEX, message: "must be in the correct format."},
    uniqueness: { case_sensitive: false, message: "already exists, please use a different email" }
end
