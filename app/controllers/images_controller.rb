class ImagesController < ApplicationController
  
  def show
    @photo = Figure.find params[:id]
  end
end
