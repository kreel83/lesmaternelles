class CreateResultats < ActiveRecord::Migration[6.0]
  def change
    create_table :resultats do |t|
      t.references :user, null: false, foreign_key: true
      t.references :enfant, null: false, foreign_key: true
      t.references :activite, null: false, foreign_key: true
      t.references :notation, null: false, foreign_key: true
      t.datetime :date
      t.references :video, null: false, foreign_key: true

      t.timestamps
    end
  end
end
