require "test_helper"

class BlogPostsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get blog_posts_url
    assert_response :success
  end
end
