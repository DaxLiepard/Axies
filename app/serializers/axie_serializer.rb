class AxieSerializer
  include JSONAPI::Serializer

  attributes :id, :name,:health, :speed, :morale, :skill

  has_many :cards
end