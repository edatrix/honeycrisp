class ApplesController < ApplicationController

  def index
    @apples = Apple.all
  end

  def create
    @apple = Apple.new(apple_params)
    @apple.save
    redirect_to apples_path
  end

  def show
    @apple = Apple.find(params[:id])
  end

  def edit
    @apple = Apple.find(params[:id])
  end

  def update
    @apple = Apple.find(params[:id])
    @apple.update(apple_params)

    redirect_to :back
  end

  def yum
    @apple = Apple.find(params[:id])
    yums = @apple.yums.to_i
    @apple.update(:yums => yums + 1)

    redirect_to :back
  end

  def yuck
    @apple = Apple.find(params[:id])
    yucks = @apple.yucks.to_i
    @apple.update(:yucks => yucks + 1)

    redirect_to :back
  end

  private

  def apple_params
    params.require(:apple).permit(:type, :color, :description, :yums, :yucks)
  end

end
