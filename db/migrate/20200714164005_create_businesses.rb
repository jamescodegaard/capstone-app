class CreateBusinesses < ActiveRecord::Migration[6.0]
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :address
      t.string :phone
      t.string :website
      t.string :category
      t.text :description
      t.text :hours
      t.string :image
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
