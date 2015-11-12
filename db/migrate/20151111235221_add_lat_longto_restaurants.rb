class AddLatLongtoRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :longitude, :integer
    add_column :restaurants, :latitude, :integer
  end
end
