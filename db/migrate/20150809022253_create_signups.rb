class CreateSignups < ActiveRecord::Migration
  def change
    create_table :signups do |t|
      t.text :userID
      t.text :password
      t.text :confirmpassword
      t.text :username
      t.integer :userage
      t.text :usercountry
      t.timestamps null: false
    end
  end
end
