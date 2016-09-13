class Checklist < ActiveRecord::Base
  belongs_to :vacation
  has_many :items
end
