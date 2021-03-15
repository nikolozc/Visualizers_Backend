class CreateSortDataElements < ActiveRecord::Migration[6.1]
  def change
    create_table :sort_data_elements do |t|
      t.integer :data_set_id
      t.integer :data

      t.timestamps
    end
  end
end
