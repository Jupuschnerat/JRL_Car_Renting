class AddCarReferenceToUsers < ActiveRecord::Migration[7.1]
  def change
    add_reference :users, :cars, foreign_key: true
  end
end
