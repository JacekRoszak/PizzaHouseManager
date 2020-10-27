class MenusController < ApplicationController
  before_action :set_menu, only: [:show, :edit, :update, :destroy]

  def index
    @menus = Menu.all
  end

  def show
  end

  def new
    @menu = Menu.new
    @menu.save
    redirect_to assigments_path(menu_id: @menu.id)
  end

  def edit
  end

  def create
    @menu = Menu.new(menu_params)

    if @menu.save
      redirect_to @menu
    else
      render :new
    end
  end

  def update
    if @menu.update(menu_params)
      fredirect_to @menu
    else
      render :edit 
    end
  end

  def destroy
    @menu.destroy
    redirect_to menus_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_menu
      @menu = Menu.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def menu_params
      params.require(:menu).permit(:id, :pizzahouse_id)
    end
end
