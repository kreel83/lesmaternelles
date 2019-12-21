class CreateEnfants < ActiveRecord::Migration[6.0]
  def change
    create_table :enfants do |t|
      t.string :nom
      t.string :preno
      t.string :groupe
      t.string :photo
      t.string :emails
      t.string :ddn
      t.string :sexe
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
