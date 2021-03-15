class CreateDataInfos < ActiveRecord::Migration[6.1]
  def change
    create_table :data_infos do |t|
      t.integer :data_set_id
      t.integer :run_time
      t.string :algo_used

      t.timestamps
    end
  end
end
