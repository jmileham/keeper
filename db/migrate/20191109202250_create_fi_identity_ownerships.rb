class CreateFiIdentityOwnerships < ActiveRecord::Migration[6.0]
  def change
    create_table :fi_identity_ownerships, id: :uuid do |t|
      t.references :financial_institution, null: false, foreign_key: true, type: :uuid
      t.references :identity, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end

    add_index :fi_identity_ownerships, [:financial_institution_id, :identity_id],
      unique: true, name: "fi_identity_ownerships_uq_idx"
  end
end
