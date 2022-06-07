class PostsController < ApplicationController
    def show
        @post = Post.find(params[:id])
        render json: @post.to_json(only: [:title, :description, :id],
                                  include: [author: { only: [:name]}])
      end
end
