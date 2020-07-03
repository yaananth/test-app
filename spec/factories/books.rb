FactoryBot.define do
  factory :book do
    sequence(:name) { |n| "Book #{n}" }

    trait :with_authors do
      transient do
        authors_count { 1 }
      end

      after(:build) do |book, options|
        book.authors = create_list(:author, options.authors_count)
      end
    end
  end
end
