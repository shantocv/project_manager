class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.string :status
      t.timestamp :deadline
      t.references :user
      t.boolean :mailed, :default => false

      t.timestamps
    end
  end
end
