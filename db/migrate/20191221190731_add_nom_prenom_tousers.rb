class AddNomPrenomTousers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :nom, :string
    add_column :users, :prenom, :string
  end
end
