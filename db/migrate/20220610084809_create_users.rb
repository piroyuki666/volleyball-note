class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string  :name,            null: false
      t.string  :password_digest, null: false
      t.integer :age_id
      t.integer :sex_id

      t.timestamps
    end
  end
end
