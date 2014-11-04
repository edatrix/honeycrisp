class ApplesController < ApplicationController

  def index
    @apples = Apple.all
  end

  def create
    @apple = Apple.new(apple_params)
    @apple.save
    redirect_to apples_path
  end

  private

  def apple_params
    params.require(:apple).permit(:type, :color, :description)
  end

end
