class Cep::SearchAddressByCep::CepSerializer < ActiveModel::Serializer
  attributes :id, :address, :neighborhood, :city, :uf
  # attributes :address, :neighborhood, :city, :uf, :full_address

  def uf
    object.state
  end

  def full_address
    object.address + object.neighborhood + object.city + object.uf
  end
end
