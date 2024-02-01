require "test_helper"

class GamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @game = games(:one)
  end

  test "should get index" do
    get games_url
    assert_response :success
  end

  test "should get new" do
    get new_game_url
    assert_response :success
  end

  test "should create game" do
    assert_difference("Game.count") do
      post games_url, params: { game: { books_allowed: @game.books_allowed, combat: @game.combat, description: @game.description, experience: @game.experience, exploration: @game.exploration, image: @game.image, platforms: @game.platforms, player_age_range: @game.player_age_range, player_preparation: @game.player_preparation, price: @game.price, roleplay: @game.roleplay, safety_details: @game.safety_details, session_max_duration: @game.session_max_duration, session_min_duration: @game.session_min_duration, system: @game.system, themes: @game.themes, title: @game.title } }
    end

    assert_redirected_to game_url(Game.last)
  end

  test "should show game" do
    get game_url(@game)
    assert_response :success
  end

  test "should get edit" do
    get edit_game_url(@game)
    assert_response :success
  end

  test "should update game" do
    patch game_url(@game), params: { game: { books_allowed: @game.books_allowed, combat: @game.combat, description: @game.description, experience: @game.experience, exploration: @game.exploration, image: @game.image, platforms: @game.platforms, player_age_range: @game.player_age_range, player_preparation: @game.player_preparation, price: @game.price, roleplay: @game.roleplay, safety_details: @game.safety_details, session_max_duration: @game.session_max_duration, session_min_duration: @game.session_min_duration, system: @game.system, themes: @game.themes, title: @game.title } }
    assert_redirected_to game_url(@game)
  end

  test "should destroy game" do
    assert_difference("Game.count", -1) do
      delete game_url(@game)
    end

    assert_redirected_to games_url
  end
end
