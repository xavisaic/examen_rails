class CreateChefs < ActiveRecord::Migration[7.0]
  def change
    create_table :chefs do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :culinary_specialty

      t.timestamps
    end
  end
end
