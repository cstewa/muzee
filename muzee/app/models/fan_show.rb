class FanShow < ActiveRecord::Base
  attr_accessible :fan_id, :show_id

  belongs_to :fan
  belongs_to :show
end
