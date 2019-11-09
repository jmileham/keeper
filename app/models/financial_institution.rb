class FinancialInstitution < ActiveRecord::Base
  validates :name,
    :access_token,
    presence: true

  validates :access_token, length: { is: 43 }

  has_many :fi_identity_ownerships
  has_many :identities, through: :fi_identity_ownerships

  after_initialize :generate_random_token

  private

  def generate_random_token
    self.access_token ||= SecureRandom.urlsafe_base64(32)
  end
end
