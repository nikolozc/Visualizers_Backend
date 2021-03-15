class CreateUserDataConnectors < ActiveRecord::Migration[6.1]
  def change
    create_table :user_data_connectors do |t|
      t.integer :user_id
      t.integer :data_set_id

      t.timestamps
    end
  end
end
