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

    fill_in "Assessment", with: @game.assessment
    fill_in "Comment", with: @game.comment
    fill_in "Difficulty", with: @game.difficulty
    fill_in "Gender", with: @game.gender
    fill_in "Name", with: @game.name
    fill_in "Platform", with: @game.platform
    fill_in "Status", with: @game.status
    click_on "Create Game"

    assert_text "Game was successfully created"
    click_on "Back"
  end

  test "should update Game" do
    visit game_url(@game)
    click_on "Edit this game", match: :first

    fill_in "Assessment", with: @game.assessment
    fill_in "Comment", with: @game.comment
    fill_in "Difficulty", with: @game.difficulty
    fill_in "Gender", with: @game.gender
    fill_in "Name", with: @game.name
    fill_in "Platform", with: @game.platform
    fill_in "Status", with: @game.status
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
