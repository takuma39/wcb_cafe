class Admins::NewsController < ApplicationController
	before_action :authenticate_admin!
	def index
	end
end
