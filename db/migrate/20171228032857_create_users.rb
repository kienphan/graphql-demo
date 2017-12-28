class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :address
      t.string :phone
      t.string :avatar

      t.timestamps
    end
  end
end
