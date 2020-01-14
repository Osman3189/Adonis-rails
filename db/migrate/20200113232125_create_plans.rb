class CreatePlans < ActiveRecord::Migration[5.2]
  def change
    create_table :plans do |t|
      t.text :name
      t.text :schedule
      t.integer :client_id
      t.integer :trainer_id

      t.timestamps
    end
  end
end
