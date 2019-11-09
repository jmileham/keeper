FactoryBot.define do
  factory :financial_institution do
    sequence :name do |n|
      "Firm #{n}"
    end
  end
end
