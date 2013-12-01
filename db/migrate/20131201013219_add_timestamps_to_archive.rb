class AddTimestampsToArchive < ActiveRecord::Migration


 change_table :archivedtasks do |t|
  t.timestamps
end


end
