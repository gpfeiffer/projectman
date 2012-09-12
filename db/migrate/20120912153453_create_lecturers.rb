class CreateLecturers < ActiveRecord::Migration
  def self.up
    create_table :lecturers do |t|
      t.string :title
      t.string :first
      t.string :last
      t.string :home_url
      t.string :discipline

      t.timestamps
    end
  end

  def self.down
    drop_table :lecturers
  end
end
