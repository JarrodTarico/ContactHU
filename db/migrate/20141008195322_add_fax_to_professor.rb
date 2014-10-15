class AddFaxToProfessor < ActiveRecord::Migration
  def change
    add_column :professors, :Office_Fax, :string
  end
end
