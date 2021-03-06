class User < ApplicationRecord
	has_many :posts
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :validatable
  def admin?
  	role == "admin"
  end
  def regular?
  	role == "regular"
  end
  def guest?
  	role == "guest"
  end
end
