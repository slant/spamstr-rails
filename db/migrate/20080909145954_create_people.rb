class CreatePeople < ActiveRecord::Migration
  def self.up
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :company_url
      t.string :company
      t.string :title
      t.timestamps
    end
  end

  def self.down
    drop_table :people
  end
end
