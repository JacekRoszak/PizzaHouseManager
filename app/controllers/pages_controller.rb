class PagesController < ApplicationController
  def home
    @pizzahouses = Pizzahouse.all
  end

  def login
    
  end
  
end
