class AddCompanyToWelcome < ActiveRecord::Migration
  def change
    add_column :welcomes, :company, :string
    add_column :welcomes, :number, :string
  end
end
