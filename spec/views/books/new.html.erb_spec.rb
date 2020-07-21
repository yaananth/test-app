require 'rails_helper'

RSpec.describe 'books/new', type: :view do
  before(:each) do
    assign(:book, build(:book))
  end

  it 'renders new book form' do
    render

    assert_select 'form[action=?][method=?]', books_path, 'post' do
      assert_select 'input[name=?]', 'book[name]'

      assert_select 'select[name=?]', 'book[authors]'
    end
  end
end
