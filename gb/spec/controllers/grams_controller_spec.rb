require 'rails_helper'

RSpec.describe GramsController, type: :controller do
  #test that it succesfully sends back a successful http response
  describe "grams#index action" do
    it 'should successfully show the page' do
      get :index
      expect(response).to have_http_status(:success)
    end
  end
  
  #test that it successfully shows the new form
  describe 'grams#new action' do
    it 'should successfully show the new form' do
        get :new
        expect(response).to have_http_status(:success)
    end
  end

end
