class Admins::ContactsController < ApplicationController
	before_action :authenticate_admin!
	def index
	end
end