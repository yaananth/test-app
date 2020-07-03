require 'rails_helper'

RSpec.describe "books/index", type: :view do
  let(:books) do
    [
        create(:book, :with_authors, authors_count: 1),
        create(:book),
    ]
  end

  before(:each) do
    assign(:books, books)
  end

  it "renders a list of books" do
    render
    assert_select "tr>td", text: books.first.name.to_s, count: 1
    assert_select "tr>td", text: books.second.name.to_s, count: 1
    assert_select "tr>td", text: books.first.authors.to_s, count: 1
  end
end
