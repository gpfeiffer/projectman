class Supervision < ActiveRecord::Base
  belongs_to :lecturer
  belongs_to :project

  validates :lecturer_id, :project_id, :presence => true
end
