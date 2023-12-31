class User < ApplicationRecord
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #validates :email, uniqueness: true
  has_many :log_climbs, class_name: 'OutdoorClimbing'
  has_one :nameofuser, class_name: 'Nameofuser' 
end
