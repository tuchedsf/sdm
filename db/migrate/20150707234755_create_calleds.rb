class CreateCalleds < ActiveRecord::Migration
  def change
    create_table :calleds do |t|
      t.integer :system_id
      t.string :tipo, :limit => 1
      t.integer :identificador
      t.string :descricao
      t.date :data
      t.timestamps null: false
    end
  def change
      add_index :calleds, :system_id
      add_index :calleds, :tipo
    end

  end

end
