class GroupTeacherShip < ActiveRecord::Base
  belongs_to :group
  belongs_to :teacher
end
