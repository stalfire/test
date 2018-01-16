class UsersController < ApplicationController
	def index
		@user = User.all
		render json: @user
	end
	def show
		@user = User.find_by(name: params[:name])
		render json: @user
	end
end
