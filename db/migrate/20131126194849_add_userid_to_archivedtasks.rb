class AddUseridToArchivedtasks < ActiveRecord::Migration
  def change
    add_column :archivedtasks, :user_id, :integer
  end
end
