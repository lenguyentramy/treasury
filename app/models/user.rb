class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable,  :lockable,:timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, 
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  
  attr_accessible :username, :email, :password, :password_confirmation, :remember_me, :blocked
  has_many :collectible
  has_many :pois, :through => :collectible

  def banned?
    blocked
  end
  def block_unblock
    if banned?
      update_attributes(:blocked => false)
    else
      update_attributes(:blocked => true)
    end
  end
  def sum(user)
  Collectible.where(:user_id => user.id).sum(:points)
  end
end
