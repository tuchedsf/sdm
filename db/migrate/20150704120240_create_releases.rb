class CreateReleases < ActiveRecord::Migration
  def change
    create_table :releases do |t|

      t.integer :system_id
      t.string :versao
      t.date :dt_implantacao
      t.text :descricao
      t.timestamps null: false
    end
  end
end
