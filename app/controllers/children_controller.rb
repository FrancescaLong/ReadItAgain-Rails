class ChildrenController < ApplicationController
	def index
		@user = current_user
		@children = Children.all
			@logged_in = logged_in?
		render "/users/index"
	end

	def show
		@user = current_user
		@child = Child.find(params[:id])
		if logged_in?
			@logged_in=true
		else
			@logged_in=false
		end
		p params[:id]
		# @videos = Video.where(:child_id => @child.id).order(updated_at: :desc)
			# @video = Video.new
		render :show
		end


	def new
		@user = current_user
		@logged_in = logged_in?
		@child = Child.new
		render :new # render new child
	end

	def create
		child_params = params.require(:child).permit(:name)
		@child = Child.create(child_params)
		# @video.user.children << @child
		current_user.children << @child
		current_user.save
		redirect_to "/users/#{current_user.id}"
	end

	def edit
		@user = current_user
		@logged_in = logged_in?
		id = params[:id]
			@child = Child.find(id)
	end

	def update
		id = params[:id]
			child = Child.find(id)

			updated_attributes = params.require(:child).permit(:name)
			child.update_attributes(updated_attributes)
			redirect_to child
	end

	def destroy
		id = params[:id]
		child = Child.find(id)
		# video = Video.find(child.video_id)
		child.destroy
		redirect_to "/users/#{current_user.id}"
	end




end
