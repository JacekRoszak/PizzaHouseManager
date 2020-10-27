class PagesController < ApplicationController
  def home
    if params[:logout]
      sign_out 
      redirect_to root_path
    end
    @pizzahouses = Pizzahouse.all
  end

  
end
