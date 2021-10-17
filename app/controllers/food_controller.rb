class FoodController < ApplicationController
  # http_basic_authenticate_with name: "dhh", password: "secret",
  #   except: [:index, :show]

  before_action :set_food, only: [:edit, :show, :update, :destroy]
  def index
    @foods = Food.order("created_at DESC")
  end

  def show
  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.new(food_params)

    if @food.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @food.update(food_params)
      redirect_to food_path(@food)
    else
      render :edit
    end
  end

  def destroy
    @food.destroy
    redirect_to root_path
  end

  private
    def food_params
      params.require(:food).permit(:title, :body)
    end

    def set_food
      @food = Food.find(params[:id])
    end

end
