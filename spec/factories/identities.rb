FactoryBot.define do
  factory :identity do
    first_name { "Janet" }
    middle_name { "B" }
    last_name { "Goode" }
    date_of_birth { "1990-01-01" }
    sequence :ssn do |n|
      sprintf "%09d", n
    end
  end
end
