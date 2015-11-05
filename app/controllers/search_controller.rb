class SearchController < ApplicationController

  def index
    @model = params[:object_type]
    @keyword = params[:keyword]
    @search_result = Search.for(@model, @keyword)
    if @search_result.size == 1
      path = "#{@model.downcase.pluralize}/#{@search_result.first.id}"
      redirect_to path
    end
  end
end
