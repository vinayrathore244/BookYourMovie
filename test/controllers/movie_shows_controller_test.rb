require 'test_helper'

class MovieShowsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @movie_show = movie_shows(:one)
  end

  test "should get index" do
    get movie_shows_url
    assert_response :success
  end

  test "should get new" do
    get new_movie_show_url
    assert_response :success
  end

  test "should create movie_show" do
    assert_difference('MovieShow.count') do
      post movie_shows_url, params: { movie_show: { movie_date: @movie_show.movie_date, movie_hour: @movie_show.movie_hour, movie_language: @movie_show.movie_language, movie_name: @movie_show.movie_name, movie_type: @movie_show.movie_type } }
    end

    assert_redirected_to movie_show_url(MovieShow.last)
  end

  test "should show movie_show" do
    get movie_show_url(@movie_show)
    assert_response :success
  end

  test "should get edit" do
    get edit_movie_show_url(@movie_show)
    assert_response :success
  end

  test "should update movie_show" do
    patch movie_show_url(@movie_show), params: { movie_show: { movie_date: @movie_show.movie_date, movie_hour: @movie_show.movie_hour, movie_language: @movie_show.movie_language, movie_name: @movie_show.movie_name, movie_type: @movie_show.movie_type } }
    assert_redirected_to movie_show_url(@movie_show)
  end

  test "should destroy movie_show" do
    assert_difference('MovieShow.count', -1) do
      delete movie_show_url(@movie_show)
    end

    assert_redirected_to movie_shows_url
  end
end
