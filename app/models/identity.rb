class Identity < ApplicationRecord
  validates :first_name,
    :middle_name,
    :last_name,
    presence: true

  validates :date_of_birth, presence: true

  validates :ssn, format: { with: /\d{9}/, message: "must be nine digits" }

  has_many :fi_identity_ownerships
  has_many :financial_institutions, through: :fi_identity_ownerships

  normalize_attributes :first_name,
    :middle_name,
    :last_name,
    :date_of_birth

  normalize_attribute :ssn do |value|
    value.gsub(/[^\d]/, '')
  end
end
