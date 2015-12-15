class VideosController < ApplicationController
	def index
		@videos = Video.all.order(updated_at: :desc)
		@user = current_user
		@logged_in = logged_in?
		render :videos
	end

	def new
		@video = Video.new
		render :new # render new video
	end

	def create
		@child = Child.find(params[:child_id]) #need to be able to map to multiple children or none
		video_params = params.require(:video).permit(:childid, :title, :description)
		@video = Video.create(video_params)
		@child.user.videos << @video
		current_user.videos << @uservideo
		current_user.save
		redirect_to "/children/#{@child.slug}" # maybe redirect somewhere else? user page? videos page?
	end

	def show
		@user = current_user
		@logged_in = logged_in?
		@videos = Video.all
		@video = Video.find(params[:id])
		@child = User.find(@video.user_id)
		@show = @user.show? @video
		@hide = @user.hide? @video
		render :show
	end

	def edit
		id = params[:id]
			@video = Video.find(id)
	end

	def update
		id = params[:id]
			video = Video.find(id)

			update_attributes = params.require(:video).permit(:title, :description)
			video.update_attributes(updated_attributes)
			redirect_to video
	end

	def destroy
		id = params[:id]
		video = Video.find(id)
		child = Child.find(video.child_id)
		video.destroy
		pretty = child.slug
		redirect_to "/children/#{pretty}"
	end

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
	
end
