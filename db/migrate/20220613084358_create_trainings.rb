class CreateTrainings < ActiveRecord::Migration[6.0]
  def change
    create_table :trainings do |t|
      t.string  :title,   null: false
      t.text    :content
      t.integer :time
      t.integer :fatigue_id
      t.integer :persons
      
      t.timestamps
    end
  end
end
