require "application_system_test_case"

class GamesTest < ApplicationSystemTestCase
  setup do
    @game = games(:one)
  end

  test "visiting the index" do
    visit games_url
    assert_selector "h1", text: "Games"
  end

  test "should create game" do
    visit games_url
    click_on "New game"

    fill_in "Books allowed", with: @game.books_allowed
    fill_in "Combat", with: @game.combat
    fill_in "Description", with: @game.description
    fill_in "Experience", with: @game.experience
    fill_in "Exploration", with: @game.exploration
    fill_in "Image", with: @game.image
    fill_in "Platforms", with: @game.platforms
    fill_in "Player age range", with: @game.player_age_range
    fill_in "Player preparation", with: @game.player_preparation
    fill_in "Price", with: @game.price
    fill_in "Roleplay", with: @game.roleplay
    fill_in "Safety details", with: @game.safety_details
    fill_in "Session max duration", with: @game.session_max_duration
    fill_in "Session min duration", with: @game.session_min_duration
    fill_in "System", with: @game.system
    fill_in "Themes", with: @game.themes
    fill_in "Title", with: @game.title
    click_on "Create Game"

    assert_text "Game was successfully created"
    click_on "Back"
  end

  test "should update Game" do
    visit game_url(@game)
    click_on "Edit this game", match: :first

    fill_in "Books allowed", with: @game.books_allowed
    fill_in "Combat", with: @game.combat
    fill_in "Description", with: @game.description
    fill_in "Experience", with: @game.experience
    fill_in "Exploration", with: @game.exploration
    fill_in "Image", with: @game.image
    fill_in "Platforms", with: @game.platforms
    fill_in "Player age range", with: @game.player_age_range
    fill_in "Player preparation", with: @game.player_preparation
    fill_in "Price", with: @game.price
    fill_in "Roleplay", with: @game.roleplay
    fill_in "Safety details", with: @game.safety_details
    fill_in "Session max duration", with: @game.session_max_duration
    fill_in "Session min duration", with: @game.session_min_duration
    fill_in "System", with: @game.system
    fill_in "Themes", with: @game.themes
    fill_in "Title", with: @game.title
    click_on "Update Game"

    assert_text "Game was successfully updated"
    click_on "Back"
  end

  test "should destroy Game" do
    visit game_url(@game)
    click_on "Destroy this game", match: :first

    assert_text "Game was successfully destroyed"
  end
end
