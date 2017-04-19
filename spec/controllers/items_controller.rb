require 'rails_helper'

RSpec.describe ItemsController do
  describe 'GET #home' do
    it 'renders the :home view' do
      get :home
      expect(response).to render_template :home
    end
  end

  describe 'GET #index' do
    it 'populates an array of items' do
      item = Factory.create(:item)
      get :index
      expect(assigns(:items)).to eq([item])
    end

    it 'renders the :index view' do
      get :index
      expect(response).to render_template :index
    end
  end

  describe 'GET #show' do
    it 'assigns the requested item to @item' do
      item = Factory.create(:item)
      get :show, id: item
      expect(assigns(:item)).to eq(item)
    end

    it 'renders the :show template'
    get :show, id: Factory.create(:item)
    expect(response).to render_template :show
  end

  # describe 'GET #new' do
  #   it 'assigns a new Item to @item'
  #   it 'renders the :new template'
  # end

  # describe 'POST #create' do
  #   context 'with valid attributes' do
  #     it 'saves the new item in the database'
  #     it 'redirects to the item\'s :show view'
  #   end

  #   context 'with invalid attributes' do
  #     it 'does not save the new item in the database'
  #     it 're-renders the :new template'
  #   end
  # end
end
