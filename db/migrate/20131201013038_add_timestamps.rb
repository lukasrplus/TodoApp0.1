class AddTimestamps < ActiveRecord::Migration

 change_table :tasks do |t|
  t.timestamps
end

end
