class PizzasController < ApplicationController
  before_action :set_pizza, only: %i[edit update destroy]

  def index
    @pizzas = Pizza.all
  end

  def new
    @pizza = Pizza.new
    @menu = params[:menu_id]
  end

  def edit; end

  def create
    @pizza = Pizza.new
    @pizza.name = pizza_params[:name]
    @pizza.price = pizza_params[:price]
    @pizza.recipe = pizza_params[:recipe]

    if @pizza.save
      redirect_to pizzas_url
    else
      render :new
    end
  end

  def update
    if @pizza.update(pizza_params)
      redirect_to pizzas_path
    else
      render :edit
    end
  end

  def destroy
    @pizza.destroy
    redirect_to pizzas_url
  end

  private

  def set_pizza
    @pizza = Pizza.find(params[:id])
  end

  def pizza_params
    params.require(:pizza).permit(:name, :price, :recipe)
  end
end
