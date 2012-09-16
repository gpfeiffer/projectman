class Student < ActiveRecord::Base
  has_many :projects

  validates :first, :last, :registration, :programme, :email, :presence => true
  validates :programme, :inclusion => PROGRAMMES
  validates :email, :format => /@/
  validates :registration, :format => /^[0-9]{8}$/

  def full_name
    "#{registration}: #{last}, #{first}"
  end

  def to_s
    full_name
  end
end
