class SearchController < ApplicationController

  def index
    @model = params[:object_type]
    @keyword = params[:keyword]
    @search_result = Search.for(@model, @keyword)
  end 

end
