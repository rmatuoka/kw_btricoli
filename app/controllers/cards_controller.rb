class CardsController < ApplicationController
  before_filter :autentica
  
  def index
    @cards = Card.all.paginate :page => params[:page]
  end

  def show
    @card = Card.find(params[:id])
  end

  def new
    @card = Card.new
  end

  def create
    @card = Card.new(params[:card])
    if @card.save
      redirect_to @card, :notice => "Successfully created card."
    else
      render :action => 'new'
    end
  end

  def edit
    @card = Card.find(params[:id])
  end

  def update
    @card = Card.find(params[:id])
    if @card.update_attributes(params[:card])
      redirect_to @card, :notice  => "Successfully updated card."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @card = Card.find(params[:id])
    @card.destroy
    redirect_to cards_url, :notice => "Successfully destroyed card."
  end
end
