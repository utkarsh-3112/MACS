class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.datetime :date
      t.integer :status
      t.string :name
      t.string :organizer
      t.string :coordinator
      t.string :sponsor
      t.string :event_type

      t.timestamps
    end
  end
end
