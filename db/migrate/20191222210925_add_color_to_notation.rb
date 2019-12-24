class AddColorToNotation < ActiveRecord::Migration[6.0]
  def change
    add_column :notations, :color, :string
  end
end
