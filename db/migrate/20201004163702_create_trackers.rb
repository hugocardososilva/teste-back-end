class CreateTrackers < ActiveRecord::Migration[6.0]
  def change
    create_table :trackers do |t|
      t.string :uuid
      t.string :page
      t.timestamp :moment

      t.timestamps
    end
  end
end
