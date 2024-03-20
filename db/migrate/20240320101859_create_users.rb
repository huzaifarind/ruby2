class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :gender
      t.string :date_of_birth
      t.string :city
      t.string :country
      t.string :address
      t.string :password

      t.timestamps
    end
  end
end
