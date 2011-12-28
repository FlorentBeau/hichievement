require 'test_helper'

class Us1Test < ActionDispatch::IntegrationTest

  test "Should create a new article" do
    visit '/articles'

    click_link('New Article')

    # The current path should be equal to 'articles/new'
    assert 'articles/new', current_path

    fill_in('Title', :with => 'A test')
    fill_in('Content', :with => 'Some content')
    click_button('Create Article')

    assert page.has_content?('Article was successfully created.')
  end

end
