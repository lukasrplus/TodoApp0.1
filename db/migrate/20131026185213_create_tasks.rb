class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :content
      t.string :owner
      t.boolean :done
      t.boolean :important
    end
  end
end
