require 'rails_helper'
  
RSpec.describe Pizzahouse, type: :model do
  
  before(:each) do
    Pizzahouse.delete_all
  end

  describe '#validations' do
    it 'should validate the presence of the name' do
      pizzahouses = Pizzahouse.new(name: '', workinghoures: '', menu_id: nil, adress: '')
      expect(pizzahouses).not_to be_valid
      expect(pizzahouses.errors.messages[:name]).to include("Nie może być puste")
    end
    
    it 'should validate uniqueness of the name' do
      Pizzahouse.create(name: 'test', workinghoures: '', menu_id: nil, adress: '')
      invalid_product = Pizzahouse.new(name: 'test', workinghoures: '', menu_id: nil, adress: '')
      expect(invalid_product).not_to be_valid
    end
  end
end
