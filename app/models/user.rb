#
class User < ActiveRecord::Base
  include Authentication
  has_many :dictionaries, dependent: :destroy
end
