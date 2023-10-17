class CreateRadicados < ActiveRecord::Migration[7.0]
  def change
    create_table :radicados do |t|
      t.string :uuid
      t.string :director
      t.integer :idDirector
      t.string :nombreGrupo
      t.string :razonSocial

      t.timestamps
    end
  end
end
