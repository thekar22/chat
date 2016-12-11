class MessagesController < ApplicationController

	def create

		message_text = params[:message]
		channel_id = params[:channel_id]

		channel = Channel.find(channel_id)
		message = Message.new :text => message_text, :date => Time.now
		message.channel = channel
		message.user = current_user

		message.save

		render json: message
	end

end