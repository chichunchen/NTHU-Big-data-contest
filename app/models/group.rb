class Group < ActiveRecord::Base
  mount_uploader :tryout_file, TryoutFileUploader
  mount_uploader :preliminary_file, PreliminaryFileUploader
  mount_uploader :final_file, FinalFileUploader

  validates :title, presence: true
  has_many :users
  has_many :group_teacher_ships
  has_many :teachers, through: :group_teacher_ships
  has_many :mentors
  belongs_to :gstatus

  after_create :set_default

  def set_default
    self.gstatus = Gstatus.find_by(name: "預設狀態")
    self.save
  end
end
