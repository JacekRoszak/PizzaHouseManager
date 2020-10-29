class AssigmentsController < ApplicationController
  load_and_authorize_resource
  before_action :set_assigment, only: :destroy

  def index
    if params[:menu_id]
      @assigments = Menu.find(params[:menu_id]).assigments.all
      @menu = Menu.find(params[:menu_id])
    else
      @assigments = Assigment.all
    end
  end

  def new
    @assigment = Assigment.new
    @assigment.menu_id = params[:menu_id]
    if Pizza.count > 0
      @pizzas = Pizza.all.map { |o| [o.name, o.id] }
    else
      @pizzas = []
    end
    @menu = params[:menu_id]
  end

  def create
    @assigment = Assigment.new(assigment_params)

    if @assigment.save
      redirect_to assigments_url(menu_id: @assigment.menu_id)
    else
      render :new
    end
  end

  def destroy
    @assigment.destroy
    redirect_to assigments_url(menu_id: params[:menu_id])
  end

  private

  def set_assigment
    @assigment = Assigment.find(params[:id])
  end

  def assigment_params
    params.require(:assigment).permit(:pizza_id, :menu_id)
  end
end
