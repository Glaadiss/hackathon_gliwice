class AddReferences < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :company, index: true
    add_reference :recrutations, :company, index: true
    add_reference :recrutations, :job, index: true
    add_reference :notifications, :recrutation, index: true
    add_reference :notifications, :user, index: true
    add_column :messages, :receiver_id, :integer
    add_column :messages, :sender_id, :integer
  end
end
