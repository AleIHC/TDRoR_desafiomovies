class ShowsController < ApplicationController
  def index
    @shows = Show.all
  end

  def create
    @show = Show.new(show_params) 

    if @show.save
      redirect_to(shows_index_path)
    else
      render :new 
    end
  end

  def new
    @show = Show.new 
  end
end


private 

def show_params
  params.require(:show).permit(:name, :synopsis, :director)
end