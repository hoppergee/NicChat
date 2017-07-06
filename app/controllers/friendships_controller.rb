class FriendshipsController < ApplicationController
	before_action :authenticate_user!

	def index
		@friends = current_user.friends
	end

	def create
		@friendship = current_user.friendships.build(:friend_id => params[:friend_id])
		if @friendship.save
			flash[:notice] = "Adde friedn"
			redirect_to root_path
		else
			flash[:error] = "Unable to add friend"
			redirect_to root_path
		end
	end

	def destroy
		@friendship = current_user.firendships.find(params[:id])
		@friendship.destroy
		flah[:notice] = "Removed friendshiop."
		redirect_to current_user
	end
end
