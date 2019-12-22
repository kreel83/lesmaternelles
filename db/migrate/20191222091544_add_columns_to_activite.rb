class AddColumnsToActivite < ActiveRecord::Migration[6.0]
  def change
    add_column :activites, :activite, :string
    add_column :activites, :soustitre, :string
    add_column :activites, :level, :string
    rename_column :activites, :nom, :titre
  end
end
