class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :number
      t.string :location
      t.string :email
      t.string :pin

      t.timestamps
    end
  end
end
