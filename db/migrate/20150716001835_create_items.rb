class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :office_id
      t.integer :mantis
      t.integer :client_id
      t.string :numProcesso
      t.string :nomeServidor
      t.text :operacao
      t.boolean :migrado

      t.timestamps null: false
      def change
        add_index :items, :office_id
        add_index :items, :mantis
        add_index :items, :client_id
      end
    end
  end
end
