class CreateKnowledges < ActiveRecord::Migration
  def change
    create_table :knowledges do |t|
      t.integer :system_id
      t.integer :user_id
      t.string :titulo
      t.text :descricao
      t.timestamps null: false
    end


    def change
      add_index :knowledges, :system_id
      add_index :knowledges, :user_id
    end
  end
end
