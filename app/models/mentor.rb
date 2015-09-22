class Mentor < ActiveRecord::Base
  has_many :group_mentor_ships
  has_many :groups, through: :group_mentor_ships
end
