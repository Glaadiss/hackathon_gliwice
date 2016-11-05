class AddReferences < ActiveRecord::Migration[5.0]
  def change
    add_reference :recrutations, :company, index: true
    add_reference :recrutations, :job, index: true
    add_reference :notifications, :recrutation, index: true
    add_reference :notifications, :user, index: true
    add_column :messages, :receiver_id, :integer
    add_column :messages, :sender_id, :integer
    add_column :users , :company_id, :integer, null: true
    add_column :companies, :user_id, :integer, null: true
  end
end
