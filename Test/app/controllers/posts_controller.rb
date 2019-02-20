class PostsController < InheritedResources::Base
	load_and_authorize_resource

  private

    def post_params
      params.require(:post).permit(:title, :body, :user_id, :published_at)
    end
end

