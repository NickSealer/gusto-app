class CreateLunches < ActiveRecord::Migration[5.2]
  def self.up
    create_table :lunches do |t|
      t.string :name, null: false
      t.string :description, null: false
      t.datetime :scheduled_to, null: false

      t.timestamps
    end
    add_index :lunches, :scheduled_to
  end

  def self.down
    drop_table :lunches
  end
end
