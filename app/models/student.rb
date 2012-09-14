class Student < ActiveRecord::Base
  has_many :projects

  def full_name
    "#{registration}: #{last}, #{first}"
  end
end
