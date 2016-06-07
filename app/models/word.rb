class Word < ActiveRecord::Base
  belongs_to :user, inverse_of: :words

  # validates :user, uniqueness: { scope:  :word}
  validates :user, uniqueness: { scope: :entry }
end
