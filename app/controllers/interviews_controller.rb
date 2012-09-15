class InterviewsController < ApplicationController
  def index
    @interviews = Interview.all
  end
  
  def ausentes
    @interviews = Interview.all(:conditions => ['ausente = true'])
  end

  def show
    @interview = Interview.find(params[:id])
  end

  def new
    @interview = Interview.new
  end

  def create
    @interview = Interview.new(params[:interview])
    
    if @interview.save
      redirect_to interviews_path, :notice => "Item criado com sucesso."
    else
      render :action => 'new'
    end
  end

  def edit
    @interview = Interview.find(params[:id])
  end

  def update
    @interview = Interview.find(params[:id])
    if @interview.update_attributes(params[:interview])
      redirect_to interviews_path, :notice  => "Item atualizado com sucesso."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @interview = Interview.find(params[:id])
    @interview.destroy
    redirect_to interviews_url, :notice => "Item deletado com sucesso."
  end
end
