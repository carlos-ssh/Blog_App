class FiguresController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  def index
    @pagy, @figures = pagy(Figure.all, items: 9)
  end

  def show
    @figure = Figure.find params[:id]
  end

  def new
    @figure = Figure.new
  end

  def create
    @figure = current_user.figures.new figure_params
    if @figure.save
      return redirect_to root_url, notice: 'Article Created Successfully.'
    end
    render :new
  end

  def edit
    @figure = Figure.find params[:id]
  end

  def update
    @figure = Figure.find params[:id]

    if @figure.update figure_params
      return redirect_to @figure, notice: 'Figure Updated!'
    end

    render :edit
  end

  private
  def figure_params
    params.require(:figure).permit(:photo, :title, :text)
  end
end
