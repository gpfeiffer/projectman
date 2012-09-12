class AddNuigMailToLecturers < ActiveRecord::Migration
  def self.up
    add_column :lecturers, :nuig_mail, :string
  end

  def self.down
    remove_column :lecturers, :nuig_mail
  end
end
