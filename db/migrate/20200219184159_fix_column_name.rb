class FixColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :reviews, :ratings, :rating
  end
end
