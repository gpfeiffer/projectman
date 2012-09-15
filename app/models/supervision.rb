class Supervision < ActiveRecord::Base
  belongs_to :lecturer
  belongs_to :project
end
