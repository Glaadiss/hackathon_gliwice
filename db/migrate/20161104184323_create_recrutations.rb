class CreateRecrutations < ActiveRecord::Migration[5.0]
  def change
    create_table :recrutations do |t|
      t.text :dependency
      t.string :salary
      t.text :description
      t.text :offer
      t.text :nice_have
      t.text :additional
      t.text :title
      t.timestamps
    end
  end
end
