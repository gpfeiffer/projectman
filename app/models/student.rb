class Student < ActiveRecord::Base
  def full_name
    "#{registration}: #{last}, #{first}"
  end
end
