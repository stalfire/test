class ArticlesController < ApplicationController
	def show 
		@article = Article.find(params[:id])
		render json: @article
	end
	def index
		@article = User.find_by(name: params[:name]).articles
		render json: @article
	end
end
