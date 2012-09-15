class CreateSupervisions < ActiveRecord::Migration
  def self.up
    create_table :supervisions do |t|
      t.integer :lecturer_id
      t.integer :project_id

      t.timestamps
    end
  end

  def self.down
    drop_table :supervisions
  end
end