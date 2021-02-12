class CreateDoses < ActiveRecord::Migration[6.0]
  def change
    create_table :doses do |t|
      t.references :cocktails foreign_key: true
      t.references :ingredient, foreign_key: true 
      t.string :description, 

      t.timestamps
    end
  end
end
