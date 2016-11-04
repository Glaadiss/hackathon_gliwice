class CreateRecrutations < ActiveRecord::Migration[5.0]
  def change
    create_table :recrutations do |t|
      t.references :company, foreign_key: true
      t.references :job, foreign_key: true
      t.text :dependency
      t.string :salary
      t.text :description
      t.text :offer
      t.text :nice_have
      t.text :additional

      t.timestamps
    end
  end
end
