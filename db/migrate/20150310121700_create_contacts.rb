class CreateContacts < ActiveRecord::Migration
  def up
    create_table :contacts do |t|
      t.string :email
      t.string :firstname
      t.string :lastname
      t.timestamps
    end
  end

  def down
    drop_table :contacts
  end
end