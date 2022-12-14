class AddressesController < ApplicationController

  def search_address_by_cep
    cep = Correios::CEP::AddressFinder.get(params[:cep])
    
    render json: cep, status: :ok
  end
end
