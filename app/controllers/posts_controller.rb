class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  before_action :is_owner?, only: [:edit, :update]
	def index	
		@posts = Post.all.order('created_at DESC')
	end
	

	def new
		@post = Post.new
	end

	def create
	 	@post = current_user.posts.create(post_params)
	 	if @post.valid?
	 		redirect_to root_path
	 	else 
	 		render :new, status: :unprocessed_entity
	 	end
	end

	def edit 
	 	@post = Post.find(params[:id])
	end

	def update
	 	@post = Post.find(params[:id])
	 	@post.update(post_params)
	 	if @post.valid?
	 		redirect_to root_path
	 	else 
	 		render :edit, status: :unprocessed_entity
	 	end
	 end

	 private

	 def is_owner?
	 	@post = Post.find(params[:id])
	 	if @post.user_id != current_user.id
	 		redirect_to root_path 
	 	end
	 end

	 def post_params
	 	params.require(:post).permit(:user_id, :photo, :description)
	 end
end
