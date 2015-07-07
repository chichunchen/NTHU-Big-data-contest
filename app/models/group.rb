class Group < ActiveRecord::Base
  validates :title, presence: true
  has_many :users
  belongs_to :gstatus
end
