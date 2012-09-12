class Lecturer < ActiveRecord::Base

  def full_name
    "#{title} #{first} #{last}"
  end

end
