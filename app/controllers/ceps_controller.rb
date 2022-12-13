class CepsController < ApplicationController

  def search_address_by_cep
    cep = Correios::CEP::AddressFinder.get(params[:cep]) if params[:cep]

    render json: cep,
           serializer: Cep::SearchAddressByCep::CepSerializer,
           status: :ok
  end
end
