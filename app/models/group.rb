class Group < ActiveRecord::Base
  validates :title, presence: true
  has_many :users
  belongs_to :gstatus

  after_create :set_default

  def set_default
    self.gstatus = Gstatus.find_by(name: "預設狀態")
    self.save
  end
end
