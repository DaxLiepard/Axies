class WalletSerializer
  include JSONAPI::Serializer
  attributes :id, :ronin_address
end