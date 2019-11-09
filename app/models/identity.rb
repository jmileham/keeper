class Identity
  validates :first_name,
    :middle_name,
    :last_name,
    presence: true

  validates :date_of_birth, presence: true

  validates :ssn, uniqueness: true
end
