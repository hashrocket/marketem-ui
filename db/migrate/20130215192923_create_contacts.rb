class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :full_name
      t.string :phone_number
      t.string :zip_code
      t.string :gender
      t.date :birthdate

      t.timestamps
    end
  end
end
