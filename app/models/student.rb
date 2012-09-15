class Student < ActiveRecord::Base
  has_many :projects

  def full_name
    "#{registration}: #{last}, #{first}"
  end

  def to_s
    full_name
  end
end
