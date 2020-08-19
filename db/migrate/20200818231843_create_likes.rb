class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.integer :liked_account_id
      t.references :account, foreign_key: true

      t.timestamps
    end
  end
end
