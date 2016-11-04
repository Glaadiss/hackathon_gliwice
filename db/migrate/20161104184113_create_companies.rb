class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :nip
      t.string :map
      t.string :address
      t.string :description

      t.timestamps
    end
  end
end
