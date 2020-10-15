class FiguresController < ApplicationController
  def index
  end

  def new
    @figure = Figure.new
  end

  def create
    @figure = current_user.figures.new figure_params
    if @item.valid? && @figure.save
      return redirect_to root_url, notice: 'Article Created Successfully.'
    end
    render :new
  end

  def edit
  end

  def update
  end

  private
  def figure_params
    params.require(:figure).permit(:photo, :title, :text)
  end
end
