class WordSerializer < ActiveModel::Serializer
  attributes :id, :entry, :definition
end
