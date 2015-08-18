class AddCategorieFromCalled < ActiveRecord::Migration
  def change

    add_column :calleds, :category_id, :integer

  def change
      add_index :calleds, :category_id
    end
  end
end
