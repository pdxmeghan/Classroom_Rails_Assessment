class ChangeColumnNameStudents < ActiveRecord::Migration
  def change
    remove_column :students, :class_id

    add_column :students, :course_id, :integer
  end
end
