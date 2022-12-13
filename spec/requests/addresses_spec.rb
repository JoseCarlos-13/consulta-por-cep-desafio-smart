require 'rails_helper'

RSpec.describe 'Ceps', type: :request do
  describe 'GET#search_address_by_cep' do
    context 'when a cep is used for to search a address' do
      let(:address_params) { { cep: '54250610' } }

      before do
        get '/ceps/search_address_by_cep', params: address_params
        # binding.pry
      end

      it 'must return 200 status code' do
        expect(response).to have_http_status(:ok)
      end

      it 'must return the address found' do
        expect(json_body).to include(:address, :neighborhood, :city, :uf,
                                     :full_address)
      end
    end
  end
end
