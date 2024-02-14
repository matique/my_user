class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.datetime :logged_in_at
      t.datetime :logged_out_at
      t.datetime :expires_at
      t.text :bag

      t.timestamps
      t.index :email, unique: true
    end
  end
end
