class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|

      t.string :username
	  t.string :email
	  t.string :encrypted_password
	  t.boolean :admin
	  t.boolean :banned
	  t.timestamps
    end
  end
end
