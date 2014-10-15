class RemoveFNameFromProfessor < ActiveRecord::Migration
  def change
    remove_column :professors, :FName, :string
    remove_column :professors, :LName, :string
  end
end
