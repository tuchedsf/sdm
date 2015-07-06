class AddSystemCategories < ActiveRecord::Migration
  def change
    add_column :categories, :system_id, :integer
  end
end
