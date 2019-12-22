class Removeuseridtoactivites < ActiveRecord::Migration[6.0]
  def change
    remove_column :activites, :user_id
  end
end
