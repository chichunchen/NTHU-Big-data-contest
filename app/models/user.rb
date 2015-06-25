class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, presence: :true
  validates :nation, presence: :true
  validates :identity, length: { is: 10 }
  validates :birthday, presence: :true
  validates :gender, inclusion: { in: %w[male female] }
  validates :phone, presence: :true
  validates :cell_phone, presence: :true
  validates :address, presence: :true

  has_and_belongs_to_many :roles
  belongs_to :group

  def has_role?(name)
    self.roles.where(name: name).length > 0
  end
end
