class CreateCorrespondances < ActiveRecord::Migration[6.0]
  def change
    create_table :correspondances do |t|
      t.references :user
      t.integer :enfants, array: true,default: []
      t.string :sujet
      t.text :body
      t.integer :reponse, array: true,default: []
      t.string :media, array: true, default: []

      t.timestamps
    end
  end
end
