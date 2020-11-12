require 'rails_helper'
  
RSpec.describe Pizzahouse, type: :model do
  
  before(:each) do
    Pizzahouse.delete_all
  end

  describe '#validations' do
    context 'adress' do
      it 'should validate presence of the name' do
        pizzahouses = Pizzahouse.new(name: '', workinghoures: 'test', menu_id: 1, adress: 'test')
        expect(pizzahouses).not_to be_valid
      end

      it 'should validate uniqueness of the name' do
        Pizzahouse.create(name: 'test', workinghoures: 'test', menu_id: 1, adress: 'test')
        invalid_product = Pizzahouse.new(name: 'test', workinghoures: 'test2', menu_id: 2, adress: 'test2')
        expect(invalid_product).not_to be_valid
      end
    end

    context 'adress' do
      it 'should validate presence of the adress' do
        pizzahouses = Pizzahouse.new(name: 'test', workinghoures: 'test', menu_id: 1, adress: '')
        expect(pizzahouses).not_to be_valid
      end

      it 'should validate uniqueness of the adress' do
        Pizzahouse.create(name: 'test', workinghoures: 'test', menu_id: 1, adress: 'test')
        invalid_product = Pizzahouse.new(name: 'test2', workinghoures: 'test2', menu_id: 2, adress: 'test')
        expect(invalid_product).not_to be_valid
      end
    end

    context 'adress' do
      it 'should validate presence of the workinghoures' do
        pizzahouses = Pizzahouse.new(name: 'test', workinghoures: '', menu_id: 1, adress: 'test')
        expect(pizzahouses).not_to be_valid
      end
    end

    context 'menu_id' do
      it 'should be optional' do
        pizzahouses = Pizzahouse.new(name: 'test', workinghoures: 'test', menu_id: nil, adress: 'test')
        expect(pizzahouses).not_to be_valid
      end
    end
  end
end
