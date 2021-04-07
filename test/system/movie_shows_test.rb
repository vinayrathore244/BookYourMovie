require "application_system_test_case"

class MovieShowsTest < ApplicationSystemTestCase
  setup do
    @movie_show = movie_shows(:one)
  end

  test "visiting the index" do
    visit movie_shows_url
    assert_selector "h1", text: "Movie Shows"
  end

  test "creating a Movie show" do
    visit movie_shows_url
    click_on "New Movie Show"

    fill_in "Movie date", with: @movie_show.movie_date
    fill_in "Movie hour", with: @movie_show.movie_hour
    fill_in "Movie language", with: @movie_show.movie_language
    fill_in "Movie name", with: @movie_show.movie_name
    fill_in "Movie type", with: @movie_show.movie_type
    click_on "Create Movie show"

    assert_text "Movie show was successfully created"
    click_on "Back"
  end

  test "updating a Movie show" do
    visit movie_shows_url
    click_on "Edit", match: :first

    fill_in "Movie date", with: @movie_show.movie_date
    fill_in "Movie hour", with: @movie_show.movie_hour
    fill_in "Movie language", with: @movie_show.movie_language
    fill_in "Movie name", with: @movie_show.movie_name
    fill_in "Movie type", with: @movie_show.movie_type
    click_on "Update Movie show"

    assert_text "Movie show was successfully updated"
    click_on "Back"
  end

  test "destroying a Movie show" do
    visit movie_shows_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Movie show was successfully destroyed"
  end
end
