require 'rails_helper'

RSpec.describe Pizza, type: :model do
  before(:each) do
    Pizza.delete_all
  end

  describe '#validates' do

    context 'name' do
      it 'should validate presence of the name' do
        pizzas = Pizza.new(name: '', recipe: 'test', price: 1)
        expect(pizzas).not_to be_valid
      end

      it 'should validate uniqueness of the name' do
        Pizza.create(name: 'test', recipe: 'test', price: 1)
        invalid_product = Pizza.new(name: 'test', recipe: 'test2', price: 2)
        expect(invalid_product).not_to be_valid
      end
    end

    context 'recipe' do
      it 'should validate presence of the recipe' do
        pizzas = Pizza.new(name: 'test', recipe: '', price: 1)
        expect(pizzas).not_to be_valid
      end

      it 'should validate uniqueness of the recipe' do
        Pizza.create(name: 'test', recipe: 'test', price: 1)
        invalid_product = Pizza.new(name: 'test2', recipe: 'test', price: 2)
        expect(invalid_product).not_to be_valid
      end
    end

    context 'price' do
      it 'should validate presence of the recipe' do
        pizzas = Pizza.new(name: 'test', recipe: 'test', price: nil)
        expect(pizzas).not_to be_valid
      end
    end
  end
end
