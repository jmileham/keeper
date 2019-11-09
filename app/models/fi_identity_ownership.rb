class FiIdentityOwnership < ApplicationRecord
  belongs_to :financial_institution
  belongs_to :identity
end
