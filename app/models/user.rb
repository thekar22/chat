class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :messages
  has_many :subscriptions
  has_many :channels, through: :subscriptions
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
