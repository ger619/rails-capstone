class CreateGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :groups do |t|
      t.string :name
      t.string :icon
      t.references :user, null: false, foreign_key: { to_table: :users }
      t.references :entity, null: false, foreign_key: { to_table: :entities }

      t.timestamps
    end
  end
end