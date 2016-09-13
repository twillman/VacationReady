class Vacation < ActiveRecord::Base
  belongs_to :user
  has_many :deadlines
  has_many :articles
  has_many :checklists
end
