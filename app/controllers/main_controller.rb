class MainController < ApplicationController
	before_action :authenticate_user!

	def index
		# render json: true
		render :index
	end

	def getChannels
		channels = Channel.all
		render json: channels
	end

end