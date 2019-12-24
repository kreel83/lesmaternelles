class AddColumnTocategories < ActiveRecord::Migration[6.0]
  def change
    add_column :categories, :color, :string
    add_column :categories, :logo, :string
  end
end
