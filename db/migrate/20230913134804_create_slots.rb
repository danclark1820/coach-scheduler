class CreateSlots < ActiveRecord::Migration[7.0]
  def change
    create_table :slots do |t|
      t.tstzrange :booking
      t.references :coach, foreign_key: { to_table: :users }
      t.references :student, foreign_key: { to_table: :users }
      t.timestamps
    end
  end
end
