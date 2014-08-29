class CreateTeacher < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :name

      t.timestamp
    end
  end
end
