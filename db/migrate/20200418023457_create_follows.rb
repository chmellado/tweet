class CreateFollows < ActiveRecord::Migration[5.2]
  def change
    create_table :follows do |t|
      t.integer :user_id
      t.integer :follow_id
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
