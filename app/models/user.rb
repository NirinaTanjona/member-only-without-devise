class User < ApplicationRecord
  before_save :downcase_email
  has_many :posts

  has_secure_password

  validates :email, format: {with: URI::MailTo::EMAIL_REGEXP}, presence: true, uniqueness: true
  validates :username, presence: true
  validates :password_digest, presence: true

  private

  def downcase_email
    self.email = email.downcase
  end
end
