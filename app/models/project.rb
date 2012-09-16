class Project < ActiveRecord::Base
  belongs_to :student
  has_one :supervision, :dependent => :destroy
  has_one :supervisor, :through => :supervision, :source => :lecturer

  validates :title, :student_id, :presence => true

  def supervisor_id
    supervisor.id if supervisor
  end
end
