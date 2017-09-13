class Weatherdata < ActiveRecord::Migration[5.1]
  def change
    add_column :weathers, :data, :jsonb
    add_column :weathers, :datetime, :datetime
  end
end
