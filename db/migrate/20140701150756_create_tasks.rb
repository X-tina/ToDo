class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.text :note
      t.date :completed

      t.timestamps
    end
  end
end
