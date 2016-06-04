class DictionarySerializer < ActiveModel::Serializer
  attributes :id, :word, :definition
end
