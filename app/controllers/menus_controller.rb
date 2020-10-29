class MenusController < ApplicationController
  before_action :set_menu, only: %i[edit update destroy]

  def index
    @menus = Menu.all
  end

  def new
    @menu = Menu.new
  end

  def edit; end

  def create
    @menu = Menu.new(menu_params)

    if @menu.save
      redirect_to assigments_path(menu_id: @menu.id)
    else
      render :new
    end
  end

  def update
    if @menu.update(menu_params)
      redirect_to menus_path
    else
      render :edit
    end
  end

  def destroy
    @menu.destroy
    redirect_to menus_url
  end

  private

  def set_menu
    @menu = Menu.find(params[:id])
  end

  def menu_params
    params.require(:menu).permit(:id, :name)
  end
end
