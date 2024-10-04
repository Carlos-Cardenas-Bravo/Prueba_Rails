require "application_system_test_case"

class TweetsTest < ApplicationSystemTestCase
  setup do
    @tweet = tweets(:one)
  end

  test "visiting the index" do
    visit tweets_url
    assert_selector "h1", text: "Tweets"
  end

  test "should create tweet" do
    visit tweets_url
    click_on "Nuevo Tweet"

    fill_in "Description", with: @tweet.Description
    fill_in "Username", with: @tweet.UserName
    click_on "Tweet"

    assert_text "Tweet creado exitosamente"
    click_on "Back"
  end

  test "should update Tweet" do
    visit tweet_url(@tweet)
    click_on "Editar Tweet", match: :first

    fill_in "Description", with: @tweet.Description
    fill_in "Username", with: @tweet.UserName
    click_on "Editar Tweet"

    assert_text "Tweet was successfully updated"
    click_on "Back"
  end

  test "should destroy Tweet" do
    visit tweet_url(@tweet)
    click_on "Eliminar Tweet", match: :first

    assert_text "Tweet eliminado exitosamente"
  end
end
