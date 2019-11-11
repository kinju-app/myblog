require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  
  @post = Post.create(id:1, title: "First Post", description: "First Description")

  test "should get index" do
    get posts_path
    assert_response :success
  end

  test "should get new" do
    get new_post_path
    assert_response :success
  end

  test "should get create" do
    get posts_path(@post)
    assert_response :success
  end

  test "should get edit" do    
    get edit_post_path(1)
    assert_response :success
  end

  test "should get update" do
    #put post_path(@post)
    #assert_response :success
  end

  test "should get destroy" do
    #get posts_destroy_url
    #assert_response :success
  end

end
