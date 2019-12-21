class CreateNotations < ActiveRecord::Migration[6.0]
  def change
    create_table :notations do |t|
      t.string :nom

      t.timestamps
    end
  end
end
