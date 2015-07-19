class User < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, presence: :true
  validates :nation, presence: :true
  validates :identity, length: { is: 10 }
  validates :birthday, presence: :true
  validates :school, presence: :true
  validates :department, presence: :true
  validates :system, presence: :true
  validates :grade, presence: :true
  validates :gender, inclusion: { in: %w[male female] }
  validates :phone, presence: :true
  validates :cell_phone, presence: :true
  validates :address, presence: :true

  has_and_belongs_to_many :roles
  has_and_belongs_to_many :skills
  belongs_to :group
  belongs_to :ustatus

  scope :need_group, -> { where(ustatus: Ustatus.find_by(name: "完成報名但未組隊")) }

  after_create :send_inform_mail
  after_create :set_default
  def send_inform_mail
    UserMailer.inform_mail(self).deliver_later
  end

  def has_role?(name)
    self.roles.where(name: name).length > 0
  end

  def is_member_of?(group)
    self.group == group
  end

  def has_join_group?
    self.group != nil
  end

  def join! group
    self.group = group
    self.save
  end

  def quit!
    self.group = nil
    self.save
  end

  def set_default
    self.ustatus = Ustatus.find_by(name: "缺切結書")
    # normal is compared to admin
    self.roles << Role.find_by(name: "normal")
    self.save
  end
end
