class CardSerializer
  include JSONAPI::Serializer

  attributes :id, :attack, :defense
end