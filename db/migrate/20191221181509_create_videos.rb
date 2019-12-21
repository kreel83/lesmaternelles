class CreateVideos < ActiveRecord::Migration[6.0]
  def change
    create_table :videos do |t|
      t.string :nom
      t.string :url
      t.string :type

      t.timestamps
    end
  end
end
