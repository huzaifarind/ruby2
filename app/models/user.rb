class User < ApplicationRecord
    has_secure_password  # Provides password hashing and authentication
  
    validates :name, presence: true
    validates :email, presence: true, uniqueness: true
    validates :gender, presence: true
    validates :date_of_birth, presence: true
    validates :city, presence: true
    validates :country, presence: true
    validates :address, presence: true
  end
  