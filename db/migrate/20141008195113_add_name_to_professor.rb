class AddNameToProfessor < ActiveRecord::Migration
  def change
    add_column :professors, :First_Name, :string
    add_column :professors, :Last_Name, :string
  end
end
