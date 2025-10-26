class UserCredential < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :email, presence: true, format: URI::MailTo::EMAIL_REGEXP, uniqueness: { case_sensitive: false }
end
