class CreateDataPoints < ActiveRecord::Migration
  def change
    create_table :data_points do |t|

      t.timestamps
    end
  end
end
