class CreateOffices < ActiveRecord::Migration
  def change
    create_table :offices do |t|
      t.integer :system_id
      t.string :identificador
      t.string :sipro
      t.string :siged
      t.date :dataRecebimento
      t.string :ocorrencia

      t.timestamps null: false

      def change
        add_index :offices, :system_id
        add_index :offices, :identificador
      end
    end
  end
end
