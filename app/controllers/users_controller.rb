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
		user_params = params.require(:user).permit(:name, :email, :password) # , :children
		@user = User.friendly.create(user_params)
		if @user.save
			session[:user_id] = @user.id
			redirect_to @user, flash: { success: "Successfully signed up!" }
		  else
		  	redirect_to sign_up_path, flash: { error: @user.errors.full_message.to_sentence }
		  end
		login(@user) # login the user
	end

	def show
		@user = User.friendly.find(params[:id])
		if logged_in?
			@logged_in=true
		else
			@logged_in=false
		end
		@children = Child.where(:user_id => params[:id])
		@videos = Video.where(:user_id => params[:id])
		render :show
	end

	def edit
		if logged_in?
			@logged_in=true
		else
			@logged_in=false
		end
		id = params[:id]
		user = User.friendly.find(params[:id])
	end

	def update
		id = params[:id]
		user = User.friendly.find(params[:id])

		update_attributes = paramas.require(:user).permit(:name, :email, :password, :children)
		user.update_attributes(update_attributes)
		redirect_to user
	end

end


