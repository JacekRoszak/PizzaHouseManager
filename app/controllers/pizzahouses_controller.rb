class PizzahousesController < ApplicationController
  before_action :set_pizzahouse, only: %i[show edit update destroy]

  def show
    @pizzas = (@pizzahouse&.menu&.pizzas || [])
  end

  def new
    @pizzahouse = Pizzahouse.new
  end

  def edit; end

  def create
    @pizzahouse = Pizzahouse.new(pizzahouse_params)

    if @pizzahouse.save
      redirect_to @pizzahouse
    else
      render :new
    end
  end

  def update
    if @pizzahouse.update(pizzahouse_params)
      redirect_to @pizzahouse
    else
      render :edit
    end
  end

  def destroy
    @pizzahouse.destroy
    redirect_to root_path
  end

  private

  def set_pizzahouse
    @pizzahouse = Pizzahouse.find(params[:id])
  end

  def pizzahouse_params
    params.require(:pizzahouse).permit(:name, :adress, :workinghoures, :menu_id)
  end
end
