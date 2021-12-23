# frozen_string_literal: true

class FoodController < ApplicationController
  before_action :set_food, only: %i[edit show update destroy]

  # Displays all food in index page
  def index
    @foods = Food.order('created_at DESC')
    @foods = Food.search(params[:search])
  end

  # Rubocop linted function to one line
  def show; end

  # Creates new food object to database
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

  # Rubocop linted function to one line
  def edit; end

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

  def random
    @food = Food.offset(rand(Food.count)).first
  end

  private

  def food_params
    params.require(:food).permit(:title, :body, :search)
  end

  def set_food
    @food = Food.find(params[:id])
  end
end
