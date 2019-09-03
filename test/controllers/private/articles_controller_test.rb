require 'test_helper'

class Private::ArticlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @private_article = private_articles(:one)
  end

  test "should get index" do
    get private_articles_url
    assert_response :success
  end

  test "should get new" do
    get new_private_article_url
    assert_response :success
  end

  test "should create private_article" do
    assert_difference('Private::Article.count') do
      post private_articles_url, params: { private_article: { name: @private_article.name, path: @private_article.path, user_id: @private_article.user_id } }
    end

    assert_redirected_to private_article_url(Private::Article.last)
  end

  test "should show private_article" do
    get private_article_url(@private_article)
    assert_response :success
  end

  test "should get edit" do
    get edit_private_article_url(@private_article)
    assert_response :success
  end

  test "should update private_article" do
    patch private_article_url(@private_article), params: { private_article: { name: @private_article.name, path: @private_article.path, user_id: @private_article.user_id } }
    assert_redirected_to private_article_url(@private_article)
  end

  test "should destroy private_article" do
    assert_difference('Private::Article.count', -1) do
      delete private_article_url(@private_article)
    end

    assert_redirected_to private_articles_url
  end
end
