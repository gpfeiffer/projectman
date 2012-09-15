class Lecturer < ActiveRecord::Base
  has_many :supervisions, :dependent => :destroy
  has_many :projects, :through => :supervisions

  def full_name
    "#{title} #{first} #{last}"
  end

  def to_s
    full_name
  end

end
