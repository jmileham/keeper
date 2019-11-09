class CreateIdentities < ActiveRecord::Migration[6.0]
  def change
    enable_extension 'pgcrypto' unless extension_enabled?('pgcrypto')
    create_table :identities, id: :uuid do |t|
      t.string :first_name, null: false
      t.string :middle_name, null: false
      t.string :last_name, null: false
      t.date :date_of_birth, null: false
      t.string :ssn, null: false, unique: true

      t.timestamps
    end
  end
end
