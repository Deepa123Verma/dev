class PostsController < ApplicationController
  load_and_authorize_resource
    def index
      @posts = Post.all
      authorize! :read, @posts
    end
    
    def new
      @post = Post.new
    end
    
    def show
      @post = Post.find(params[:id])
    end

    def create
      @post =Post.new(post_params)
      @post.user_id = current_user.id
      if @post.save
        redirect_to @post
      else
        render :new 
      end
    end
 
    private
      def post_params
        params.require(:post).permit(:title,:body)

      end
      
    # def show
    #     @post = Post.find(params[:id])
    #     render json: @post.to_json(only: [:title, :description, :id],
    #                               include: [author: { only: [:name]}])
    #   end
end
