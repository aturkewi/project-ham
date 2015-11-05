class SearchController < ApplicationController

  def index
    @model = params[:object_type]
    @keyword = params[:keyword]
    @search_result = Search.for(@model, @keyword)
    if @search_result.size == 1
      redirect to favorite_path(@search_result)
    end
  end
end
