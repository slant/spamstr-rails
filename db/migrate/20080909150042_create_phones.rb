class CreatePhones < ActiveRecord::Migration
  def self.up
    create_table :phones do |t|
      t.string :number
      t.string :label
      t.integer :person_id
      t.timestamps
    end
  end

  def self.down
    drop_table :phones
  end
end
