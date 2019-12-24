class RemoveVidoToresultats < ActiveRecord::Migration[6.0]
  def change
    remove_column :resultats, :video_id
  end
end
