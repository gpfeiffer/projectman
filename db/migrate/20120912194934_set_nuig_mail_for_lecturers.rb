# -*- coding: utf-8 -*-
class SetNuigMailForLecturers < ActiveRecord::Migration
  def self.up
    Lecturer.all.each do |lecturer|
      first = lecturer.first.downcase.sub('ä','ae').sub('ö','oe').sub('ü','ue').sub(' ', '').sub("'", '')
      last = lecturer.last.downcase.sub('ä','ae').sub('ö','oe').sub('ü','ue').sub(' ', '').sub("'", '')

      nuig_mail = "#{first}.#{last}"
      lecturer.update_attribute(:nuig_mail, nuig_mail)
    end
  end

  def self.down
  end
end
