class ApplesController < ApplicationController

  def index
  end

  private

  def apple_params
    params.require(:apple).permit(:type, :color, :description)
  end

end
