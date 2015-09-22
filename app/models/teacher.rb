class Teacher < ActiveRecord::Base
  has_many :group_teacher_ships
  has_many :groups, through: :group_teacher_ships
end
