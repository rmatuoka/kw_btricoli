class SearchsController < ApplicationController
  before_filter :autentica
  def index
    if !params[:keyword].blank?
      @Results = Card.search_for(params[:keyword]).paginate :page => params[:page]
    end
  end
end
