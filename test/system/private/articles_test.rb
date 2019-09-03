require "application_system_test_case"

class Private::ArticlesTest < ApplicationSystemTestCase
  setup do
    @private_article = private_articles(:one)
  end

  test "visiting the index" do
    visit private_articles_url
    assert_selector "h1", text: "Private/Articles"
  end

  test "creating a Article" do
    visit private_articles_url
    click_on "New Private/Article"

    fill_in "Name", with: @private_article.name
    fill_in "Path", with: @private_article.path
    fill_in "User", with: @private_article.user_id
    click_on "Create Article"

    assert_text "Article was successfully created"
    click_on "Back"
  end

  test "updating a Article" do
    visit private_articles_url
    click_on "Edit", match: :first

    fill_in "Name", with: @private_article.name
    fill_in "Path", with: @private_article.path
    fill_in "User", with: @private_article.user_id
    click_on "Update Article"

    assert_text "Article was successfully updated"
    click_on "Back"
  end

  test "destroying a Article" do
    visit private_articles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Article was successfully destroyed"
  end
end
