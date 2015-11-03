require 'test_helper'

class FixturesControllerTest < ActionController::TestCase
  setup do
    @fixture = fixtures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fixtures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fixture" do
    assert_difference('Fixture.count') do
      post :create, fixture: { awayteam_id: @fixture.awayteam_id, competition_id: @fixture.competition_id, datetime: @fixture.datetime, hometeam_id: @fixture.hometeam_id, losingscore: @fixture.losingscore, report: @fixture.report, venue: @fixture.venue, winningscore: @fixture.winningscore, winningteam_id: @fixture.winningteam_id }
    end

    assert_redirected_to fixture_path(assigns(:fixture))
  end

  test "should show fixture" do
    get :show, id: @fixture
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fixture
    assert_response :success
  end

  test "should update fixture" do
    put :update, id: @fixture, fixture: { awayteam_id: @fixture.awayteam_id, competition_id: @fixture.competition_id, datetime: @fixture.datetime, hometeam_id: @fixture.hometeam_id, losingscore: @fixture.losingscore, report: @fixture.report, venue: @fixture.venue, winningscore: @fixture.winningscore, winningteam_id: @fixture.winningteam_id }
    assert_redirected_to fixture_path(assigns(:fixture))
  end

  test "should destroy fixture" do
    assert_difference('Fixture.count', -1) do
      delete :destroy, id: @fixture
    end

    assert_redirected_to fixtures_path
  end
end
