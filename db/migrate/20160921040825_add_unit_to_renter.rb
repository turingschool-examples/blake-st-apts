class AddUnitToRenter < ActiveRecord::Migration[5.0]
  def change
    add_reference :renters, :unit, foreign_key: true
  end
end
