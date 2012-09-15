class Project < ActiveRecord::Base
  belongs_to :student
  has_one :supervision, :dependent => :destroy
  has_one :supervisor, :through => :supervision, :source => :lecturer 
end
