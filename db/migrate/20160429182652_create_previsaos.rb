class CreatePrevisaos < ActiveRecord::Migration
  def change
    create_table :previsaos do |t|
      t.string :previsao
      t.boolean :ativo
      t.references :frequencia, index: true

      t.timestamps
    end
  end
end
