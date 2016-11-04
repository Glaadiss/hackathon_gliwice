class CreateNotifications < ActiveRecord::Migration[5.0]
  def change
    create_table :notifications do |t|
      t.references :user, foreign_key: true
      t.references :recrutation, foreign_key: true
      t.attachment :document
      t.text :description

      t.timestamps
    end
  end
end
