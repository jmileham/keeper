class FinancialInstitution < ActiveRecord::Base
  validates :name,
    :access_token,
    presence: true

  validates :access_token, length: { is: 43 }
end
