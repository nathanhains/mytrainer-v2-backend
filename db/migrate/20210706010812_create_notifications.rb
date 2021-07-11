class CreateNotifications < ActiveRecord::Migration[6.1]
  def change
    create_table :notifications do |t|
      t.integer :recipient_id
      t.integer :sender_id
      t.text :activity_type
      t.boolean :is_unread
      t.timestamps
    end
  end
end
