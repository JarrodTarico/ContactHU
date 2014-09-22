class DropUsersTable < ActiveRecord::Migration
    def up
      drop_table :Users
  end
  
  def down
    raise ActiveRecord::IrreversibleMigration
  end
  
end

#Used to drop tables. Run rake db:migrate to excute