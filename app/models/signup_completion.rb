class SignupCompletion
  include ActiveModel::Model

  attribute :keeper_id, :string

  attribute :email, :string
  attribute :phone, :string
  attribute :address, :string
  attribute :city, :string
  attribute :state, :string
  attribute :zip, :string

  attribute :employment_status, :string
  attribute :employer, :string
  attribute :employer_address, :string
  attribute :employer_city, :string
  attribute :employer_state, :string
  attribute :employer_zip, :string

  attribute :broker_dealer_affiliate, :boolean
end
