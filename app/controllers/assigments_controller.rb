class AssigmentsController < ApplicationController
  before_action :set_assigment, only: [:show, :edit, :update, :destroy]

  def index
    if params[:menu_id]
      @assigments = Menu.find(params[:menu_id]).assigments.all
      @menu = Menu.find(params[:menu_id])
    else
      @assigments = Assigment.all
    end
    
  end

  def show
  end

  def new
    @assigment = Assigment.new
    @assigment.menu_id = params[:menu_id]
    @pizzas = Pizza.all.map { |o| [o.name, o.id] }
    @menu = params[:menu_id]
  end

  def edit
  end

  def create
    @assigment = Assigment.new(assigment_params)

    if @assigment.save
      redirect_to assigments_url(menu_id: @assigment.menu_id)
    else
      render :new 
    end
  end

  def update
    if @assigment.update(assigment_params)
      redirect_to @assigment
    else
      render :edit 
    end
  end

  def destroy
    @assigment.destroy
    redirect_to assigments_url(menu_id: params[:menu_id])
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assigment
      @assigment = Assigment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def assigment_params
      params.require(:assigment).permit(:pizza_id, :menu_id)
    end
end
