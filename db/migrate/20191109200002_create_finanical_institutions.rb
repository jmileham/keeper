class CreateFinanicalInstitutions < ActiveRecord::Migration[6.0]
  def change
    create_table :financial_institutions, id: :uuid do |t|
      t.string :name, null: false, unique: true
      t.string :access_token, null: false
      t.timestamps
    end
  end
end
