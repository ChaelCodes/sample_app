class User < ActiveRecord::Base
  
  before_save { self.email.downcase! }
  VALID_EMAIL_REGEX = /\A.+@[a-z0-9]+\..+\z/i
  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 255 }, 
                    format: { with: VALID_EMAIL_REGEX }, 
                    uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
  has_secure_password
end
