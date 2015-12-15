class ChildrenController < ApplicationController
	def index
		@user = current_user
		@children = Children.all
			@logged_in = logged_in?
		render "/users/index"
	end

	def show
		@user = current_user
		@child = Child.friendly.find(params[:id])
		if logged_in?
			@logged_in=true
		else
			@logged_in=false
		end
		p params[:id]
		@videos = Video.where(:child_id => @child.id).order(updated_at: :desc)
			@video = Video.new
		render :show
		end

end
