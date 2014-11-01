class ApplesController < ApplicationController

  def index
    @apples = Apple.all
  end

  private

  def apple_params
    params.require(:apple).permit(:type, :color, :description)
  end

end
