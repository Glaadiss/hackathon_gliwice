class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.text :content
      t.references :sender, foreign_key: true
      t.references :receiver, foreign_key: true
      t.boolean :is_read?

      t.timestamps
    end
  end
end
