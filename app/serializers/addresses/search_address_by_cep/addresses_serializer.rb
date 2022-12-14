class Addresses::SearchAddressByCep::AddressesSerializer < ActiveModel::Serializer
  attributes :address, :neighborhood, :city, :uf, :full_address

  def uf
    object.state
  end

  def full_address
    object.address + object.neighborhood + object.city + object.uf
  end
end
