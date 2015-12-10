class UsersController < ApplicationController
	#get the users

	def index
		@user = current_user
			@logged_in = logged_in?
	end

	# creates a new user to pass to other forms later
	def new
		@user = User.new
	end

	def create
		user_params.require(:user).permit(:name, :email, :password, :children)
		@user.save # login the user
		redirect_to "/users/#{@user.id}" # go to the user show page
	end

	def show
		@user = User.find(params[:id])
		if logged_in?
			@logged_in=true
		else
			@logged_in=false
		end
		render: show
	end

	def edit
		if logged_in?
			@logged_in=true
		else
			@logged_in=false
		end
		id = params[:id]
		user = User.find(id)
	end

	def update
		id = params[:id]
		user = User.find(id)

		update_attributes = paramas.require(:user).permit(:name, :email, :password, :children)
		user.update_attributes(update_attributes)
		redirect_to user
	end

end


