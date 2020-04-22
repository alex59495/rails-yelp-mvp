class RemoveCategoriyFromRestaurant < ActiveRecord::Migration[6.0]
  def change

    remove_column :restaurants, :categoriy, :string
  end
end
