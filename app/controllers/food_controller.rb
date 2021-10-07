class FoodController < ApplicationController
  def index
    @foods = Food.all
  end

  def show
    @food = Food.find(params[:id])
  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.new(title: "...", body: "...")

    if @food.save
      redirect_to @food
    else
      render :new
    end
  end
end
