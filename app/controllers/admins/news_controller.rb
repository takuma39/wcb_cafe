class Admins::NewsController < ApplicationController
	before_action :authenticate_admin!
	def new
		@news = News.new
	end

	def index
		@news = News.all
	end

	def show
	end

	def edit
	end

	def create
		@news = News.new(news_params)
		if @news.save
			flash[:notice] = "投稿完了"
			redirect_to admins_news_index_path
		else
			redirect_to request.referer
		end
	end

	def update
	end

	def destroy
	end

	private

	def news_params
		params.require(:news).permit(
			:title,
		    :content,
		    :day,
		    :category,
		    :sub_title,
		    :sub_content
		    )
	end
end
