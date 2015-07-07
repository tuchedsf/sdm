class AddIndexCategoriesReleases < ActiveRecord::Migration
  def change
    add_index :categories, :system_id
    add_index :releases, :system_id
  end
end
