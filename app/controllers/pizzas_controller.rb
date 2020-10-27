class PizzasController < ApplicationController
  before_action :set_pizza, only: [:show, :edit, :update, :destroy]

  def index
    @pizzas = Pizza.all
  end

  def show
  end

  def new
    @pizza = Pizza.new
    if params[:menu_id]
      @menu = params[:menu_id]
    end
  end

  def edit
  end

  def create
    
    @pizza = Pizza.new
    @pizza.name = pizza_params[:name]
    @pizza.price = pizza_params[:price]
    @pizza.recipe = pizza_params[:recipe]

    if @pizza.save
      redirect_to assigments_url(menu_id: pizza_params[:menu_id])
    else
      render :new 
    end
  end

  def update
    if @pizza.update(pizza_params)
      redirect_to @pizza
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
      params.require(:pizza).permit(:name, :price, :recipe, :menu_id)
    end
end
