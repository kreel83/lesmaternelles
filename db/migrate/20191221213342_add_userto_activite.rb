class AddUsertoActivite < ActiveRecord::Migration[6.0]
  def change
    add_reference :activites, :user, index: true
  end
end
