class CreateWelcome < ActiveRecord::Migration
  def change
    create_table :welcomes do |t|
      t.string :fName
      t.string :email
      t.string :lName
      t.text :message
    end
  end
end
