class CreateRejetactivites < ActiveRecord::Migration[6.0]
  def change
    create_table :rejetactivites do |t|
      t.references :user, null: false, foreign_key: true
      t.references :activite, null: false, foreign_key: true

      t.timestamps
    end
  end
end
