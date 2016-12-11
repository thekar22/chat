class ChannelsController < ApplicationController

	def show
		channel_id = params[:id]
		@user = current_user
		@channel = Channel.find(channel_id)
		@messages = @channel.messages

		render :show
	end


end