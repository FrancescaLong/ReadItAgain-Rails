module VideosHelper

	def showVideo child
		child = Child.where("child_id = ? AND user_id = ?", child.id, user.id)
		# if include
		# not sure about what to include here
	end

	def hideVideo child
		child = Child.where("child_id = ? AND user_id = ?", child.id, user.id)
		# if hide
		# not sure about what to include here
	end

	def shareVideo user
		# need something here to allow users to share their videos with other users
	end


end
