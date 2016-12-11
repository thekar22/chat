class Channel < ActiveRecord::Base
	has_many :users, through: :subscriptions
	has_many :messages
end
