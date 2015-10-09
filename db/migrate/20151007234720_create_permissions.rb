class CreatePermissions < ActiveRecord::Migration
  def change
    create_table :permissions do |t|
    	t.belongs_to :system, index: true
      t.belongs_to :user, index: true
      t.integer :role
      t.timestamps null: false
    end
  end
end
