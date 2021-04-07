class AddCountryCodeToUser < ActiveRecord::Migration[5.2]
  def change
  	add_column :users, :Country_code, :string
  end
end
