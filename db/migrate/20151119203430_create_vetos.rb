class CreateVetos < ActiveRecord::Migration
  def change
    create_table :vetos do |t|

      t.timestamps null: false
    end
  end
end
