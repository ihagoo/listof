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
      post games_url, params: { game: { assessment: @game.assessment, comment: @game.comment, difficulty: @game.difficulty, gender: @game.gender, name: @game.name, platform: @game.platform, status: @game.status } }
    end

    created_game = Game.order(:created_at).last
    assert_redirected_to game_url(created_game)
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
    patch game_url(@game), params: { game: { assessment: @game.assessment, comment: @game.comment, difficulty: @game.difficulty, gender: @game.gender, name: @game.name, platform: @game.platform, status: @game.status } }
    assert_redirected_to game_url(@game)
  end

  test "should destroy game" do
    assert_difference("Game.count", -1) do
      delete game_url(@game)
    end

    assert_redirected_to games_url
  end
end
