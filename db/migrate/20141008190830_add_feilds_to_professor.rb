class AddFeildsToProfessor < ActiveRecord::Migration
  def change
    add_column :professors, :Professor_ID, :integer
    add_index :professors, :Professor_ID
    add_column :professors, :First_Name, :string
    add_column :professors, :Last_Name, :string
    add_column :professors, :Department, :string
    add_column :professors, :Address, :string
    add_column :professors, :City, :string
    add_column :professors, :State, :string
    add_column :professors, :Zip_Code, :string
    add_column :professors, :Cell_Phone, :string
    add_column :professors, :Home_Phone, :string
    add_column :professors, :Office_Phone, :string
    add_column :professors, :Primary_Email, :string
    add_column :professors, :Secondary_Email, :string

  end
end
