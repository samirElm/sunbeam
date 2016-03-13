class AddInfosToRefugees < ActiveRecord::Migration
  def change
    add_column :refugees, :first_name, :string
    add_column :refugees, :last_name, :string
    add_column :refugees, :phone_number, :string
  end
end
