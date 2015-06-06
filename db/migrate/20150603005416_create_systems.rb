class CreateSystems < ActiveRecord::Migration
  def change
    create_table :systems do |t|
      t.string :nome
      t.string :responsavel

      t.timestamps
    end
  end
end
