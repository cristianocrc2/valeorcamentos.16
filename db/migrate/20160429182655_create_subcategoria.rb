class CreateSubcategoria < ActiveRecord::Migration
  def change
    create_table :subcategoria do |t|
      t.string :subcategoria
      t.float :ativo
      t.references :categoria, index: true

      t.timestamps
    end
  end
end
