class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :date
      t.text :description
      t.string :alt_contact
      t.string :alt_email
      t.string :image
      t.integer :business_id

      t.timestamps
    end
  end
end
