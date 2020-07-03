FactoryBot.define do
  factory :author do
    sequence(:name) { |n| "Author #{n}" }

    factory :author_with_books do
      transient do
        books_count { 1 }
      end

      after_create do |author, evaluator|
        create_list(:book, evaluator.books_count, author: author)
      end
    end
  end
end
