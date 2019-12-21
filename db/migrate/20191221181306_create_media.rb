class CreateMedia < ActiveRecord::Migration[6.0]
  def change
    create_table :media do |t|
      t.string :nom
      t.string :url
      t.string :type

      t.timestamps
    end
  end
end
