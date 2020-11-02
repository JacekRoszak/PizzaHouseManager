require 'rails_helper'

RSpec.describe PizzahousesController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/pizzahouses').not_to route_to('pizzahouses#index')
    end

    it 'routes to #show' do
      expect(get: '/pizzahouses/1').to route_to('pizzahouses#show', id: '1')
    end


    it 'routes to #create' do
      expect(post: '/pizzahouses').to route_to('pizzahouses#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/pizzahouses/1').to route_to('pizzahouses#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/pizzahouses/1').to route_to('pizzahouses#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/pizzahouses/1').to route_to('pizzahouses#destroy', id: '1')
    end
  end
end
