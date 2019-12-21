class ChanggePrenomToEnfants < ActiveRecord::Migration[6.0]
  def change
    rename_column :enfants, :preno, :prenom
  end
end
