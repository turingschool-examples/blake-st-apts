class AddOwnerToUnit < ActiveRecord::Migration[5.0]
  def change
    add_reference :units, :owner, foreign_key: true
  end
end
