#
class User < ActiveRecord::Base
  include Authentication
  has_many :words, dependent: :destroy
end
