class ChangeAdminCurrentUser < ActiveRecord::Migration
  def update
    current_user.update_attribute :admin, true
  end
end
