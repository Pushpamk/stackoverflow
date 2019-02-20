class CategoriesController < InheritedResources::Base
	load_and_authorize_resource
  private

    def category_params
      params.require(:category).permit(:category)
    end
end

