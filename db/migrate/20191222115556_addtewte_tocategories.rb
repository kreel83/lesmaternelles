class AddtewteTocategories < ActiveRecord::Migration[6.0]
  def change
    add_column :categories, :texte, :string
    add_column :categories, :court, :string
  end
end
