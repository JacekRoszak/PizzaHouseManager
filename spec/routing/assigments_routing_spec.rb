require 'rails_helper'

RSpec.describe AssigmentsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/assigments').to route_to('assigments#index')
    end

    it 'routes to #show' do
      expect(get: '/assigments/1').not_to route_to('assigments#show', id: '1')
    end


    it 'routes to #create' do
      expect(post: '/assigments').to route_to('assigments#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/assigments/1').not_to route_to('assigments#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/assigments/1').not_to route_to('assigments#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/assigments/1').to route_to('assigments#destroy', id: '1')
    end
  end
end
