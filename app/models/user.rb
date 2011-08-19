class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable,  :lockable,:timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, 
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  
  attr_accessible :username, :email, :password, :password_confirmation, :remember_me, :blocked
  has_many :collected_poi
  has_many :pois, :through => :collected_poi

  def banned?
    blocked ||= false
  end
  def block
    self.blocked = true unless banned?
  end
  
  def sum(user)
  CollectedPoi.where(:user_id => user.id).sum(:points)
  end
end
