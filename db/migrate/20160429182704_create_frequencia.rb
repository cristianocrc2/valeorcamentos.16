class CreateFrequencia < ActiveRecord::Migration
  def change
    create_table :frequencia do |t|
      t.string :frequencia
      t.boolean :ativo
      t.references :subcategoria, index: true

      t.timestamps
    end
  end
end
