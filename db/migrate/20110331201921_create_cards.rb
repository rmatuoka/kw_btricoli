class CreateCards < ActiveRecord::Migration
  def self.up
    create_table :cards do |t|
      t.string :contact
      t.string :company
      t.string :position
      t.string :email
      t.string :phone
      t.string :city
      t.timestamps
    end
  end

  def self.down
    drop_table :cards
  end
end
