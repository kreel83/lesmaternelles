class CreateActivites < ActiveRecord::Migration[6.0]
  def change
    create_table :activites do |t|
      t.string :nom
      t.string :photo
      t.references :categorie, null: false, foreign_key: true

      t.timestamps
    end
  end
end
