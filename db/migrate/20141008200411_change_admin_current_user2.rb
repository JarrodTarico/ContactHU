class ChangeAdminCurrentUser2 < ActiveRecord::Migration
   
  
  def change
     execute <<-SQL
UPDATE users
SET admin = 'true'
WHERE id= 1;
       
    SQL
 
  end
end
