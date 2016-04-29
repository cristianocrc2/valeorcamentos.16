class CreateCategoria < ActiveRecord::Migration
  def change
    create_table :categoria do |t|
      t.string :categoria
      t.boolean :ativo
      t.references :nicho, index: true

      t.timestamps
    end
  end
end
