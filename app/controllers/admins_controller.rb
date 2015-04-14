class AdminsController < ApplicationController

	before_action :authenticate_admin!

	def index
	end

	def send_invite
		User.invite!(email: params[:email], name: params[:name])
		flash[:success] = "Invite Sent"
		redirect_to admins_path
	end
end