class VideosController < ApplicationController
	def index
		@videos = Video.all.order(updated_at: :desc)
		@user = current_user
		@logged_in = logged_in?
		render :videos
	end

	def new
		@user = current_user
		@logged_in = logged_in?
		@video = Video.new
		render :new # render new video
	end

	def create
		video_params = params.require(:video).permit(:title, :description, :embed, :shared, :userid)
		@video = Video.create(video_params)
		# @child.user.videos << @video
		current_user.videos << @video
		current_user.save
		redirect_to "/users/#{current_user.id}"
	end

	def show
		@user = current_user
		@logged_in = logged_in?
		@videos = Video.all
		# @video = Video.find(params[:id])
		# @child = User.find(@video.user_id)
		# @show = @user.show? @video
		# @hide = @user.hide? @video
		# render :show
		redirect_to "/users/#{current_user.id}"
	end

	def edit
		@user = current_user
		@logged_in = logged_in?
		id = params[:id]
			@video = Video.find(id)
	end

	def update
		id = params[:id]
			video = Video.find(id)

			updated_attributes = params.require(:video).permit(:title, :description, :embed, :shared)
			video.update_attributes(updated_attributes)
			redirect_to video
	end

	def destroy
		id = params[:id]
		video = Video.find(id)
		# child = Child.find(video.child_id)
		video.destroy
		redirect_to "/users/#{current_user.id}"
	end


end

=begin   IF THIS IS USED, MOVE IT BACK ABOVE THE END ITEM
	def include
		id = params[:id]
		video = Video.find(id)
		owner = User.find(video.user_id)
		video.included current_child # not sure about this part
		owner.save
		redirect_to "/videos/#{id}"
	end

	def hide
		id = params[:id]
		video = Video.find(id)
		owner = User.find(video.user_id)
		video.hide current_child # not sure about this part
		owner.save
		redirect_to "/videos/#{id}"
	end
=end

	

