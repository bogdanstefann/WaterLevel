require "test_helper"

class SepticTankLevelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @septic_tank_level = septic_tank_levels(:one)
  end

  test "should get index" do
    get septic_tank_levels_url
    assert_response :success
  end

  test "should get new" do
    get new_septic_tank_level_url
    assert_response :success
  end

  test "should create septic_tank_level" do
    assert_difference('SepticTankLevel.count') do
      post septic_tank_levels_url, params: { septic_tank_level: { level: @septic_tank_level.level, measured_time: @septic_tank_level.measured_time } }
    end

    assert_redirected_to septic_tank_level_url(SepticTankLevel.last)
  end

  test "should show septic_tank_level" do
    get septic_tank_level_url(@septic_tank_level)
    assert_response :success
  end

  test "should get edit" do
    get edit_septic_tank_level_url(@septic_tank_level)
    assert_response :success
  end

  test "should update septic_tank_level" do
    patch septic_tank_level_url(@septic_tank_level), params: { septic_tank_level: { level: @septic_tank_level.level, measured_time: @septic_tank_level.measured_time } }
    assert_redirected_to septic_tank_level_url(@septic_tank_level)
  end

  test "should destroy septic_tank_level" do
    assert_difference('SepticTankLevel.count', -1) do
      delete septic_tank_level_url(@septic_tank_level)
    end

    assert_redirected_to septic_tank_levels_url
  end
end
