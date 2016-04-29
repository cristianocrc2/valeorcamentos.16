class CreateNichos < ActiveRecord::Migration
  def change
    create_table :nichos do |t|
      t.string :nicho
      t.boolean :ativo
      t.references :categoria, index: true

      t.timestamps
    end
  end
end
