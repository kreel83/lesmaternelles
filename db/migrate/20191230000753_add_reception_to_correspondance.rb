class AddReceptionToCorrespondance < ActiveRecord::Migration[6.0]
  def change
    add_column :correspondances, :reception, :boolean, default: false
  end
end
