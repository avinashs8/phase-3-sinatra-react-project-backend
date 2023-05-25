class CreateDrugs < ActiveRecord::Migration[6.1]
  def change
    create_table :drugs do |t|
      t.string :name
      t.string :dose
      t.string :formulation
      t.integer :quantity
    end
  end
end
