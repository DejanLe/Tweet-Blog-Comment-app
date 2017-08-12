require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get how_it_works" do
    get pages_how_it_works_url
    assert_response :success
  end

  test "should get about_us" do
    get pages_about_us_url
    assert_response :success
  end

  test "should get blog" do
    get pages_blog_url
    assert_response :success
  end

  test "should get browse_foods" do
    get pages_browse_foods_url
    assert_response :success
  end

end
