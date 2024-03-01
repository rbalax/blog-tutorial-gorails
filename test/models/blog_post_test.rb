require "test_helper"

class BlogPostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "draft? returns true for draft blog_post" do
    assert BlogPost.new(published_at: nil).draft?
  end

  test "draft? returns false for published blog_post" do
    refute BlogPost.new(published_at: 1.year.ago).draft?
  end

  test "draft? returns false for scheduled blog_post" do
    refute BlogPost.new(published_at: 1.year.from_now).draft?
  end

  test "published? returns true for published blog_post" do
    assert BlogPost.new(published_at: 1.year.ago).published?
  end

  test "published? returns false for draft blog_post" do
    refute BlogPost.new(published_at: nil).published?
  end

  test "published? returns false for scheduled blog_post" do
    refute BlogPost.new(published_at: 1.year.from_now).published?
  end

  test "scheduled? returns true for scheduled blog_post" do
    assert BlogPost.new(published_at: 1.year.from_now).scheduled?
  end

  test "scheduled? returns false for published blog_post" do
    refute BlogPost.new(published_at: 1.year.ago).scheduled?
  end

  test "scheduled? returns false for draft blog_post" do
    refute BlogPost.new(published_at: nil).scheduled?
  end
end
