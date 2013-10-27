class CreateArchivedtasks < ActiveRecord::Migration
  def change
    create_table :archivedtasks do |t|
      t.boolean :done
      t.string :content
      t.string :owner
      t.boolean :important
    end
  end
end
