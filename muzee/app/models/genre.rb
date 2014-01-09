class Genre < ActiveRecord::Base
  attr_accessible :kind

  has_and_belongs_to_many :artists
  has_and_belongs_to_many :fans
end
