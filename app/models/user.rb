class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
           
  has_many :blogs
  has_many :favorites

  def self.guest
    find_or_create_by!(email: 'guest@example.com') do |user|
      user.name = 'guests'
      user.password = SecureRandom.urlsafe_base64
    end
  end

  def self.admin_guest
    find_or_create_by!(email: 'admin_guest@example.com') do |user|
      user.name = 'Guest administrator'
      user.password = SecureRandom.urlsafe_base64
      user.admin = 'true'
    end
  end
end
