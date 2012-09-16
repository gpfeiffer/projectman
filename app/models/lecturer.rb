class Lecturer < ActiveRecord::Base
  has_many :supervisions, :dependent => :destroy
  has_many :projects, :through => :supervisions

  validates :first, :last, :title, :nuig_mail, :presence => true
  validates :title, :inclusion => TITLES
  validates :discipline, :inclusion => DISCIPLINES

  def full_name
    "#{title} #{first} #{last}"
  end

  def to_s
    full_name
  end

end
