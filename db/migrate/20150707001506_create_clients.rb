class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.integer :system_id
      t.string :nome
      t.string :email
      t.string :telefone

      t.timestamps null: false


    end


    def change
    add_index :clients, :system_id
    end
  end
end
