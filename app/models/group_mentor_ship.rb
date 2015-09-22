class GroupMentorShip < ActiveRecord::Base
  belongs_to :group
  belongs_to :mentor
end
