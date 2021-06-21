require "test_helper"

class SetGroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @set_group = set_groups(:one)
  end

  test "should get index" do
    get set_groups_url, as: :json
    assert_response :success
  end

  test "should create set_group" do
    assert_difference('SetGroup.count') do
      post set_groups_url, params: { set_group: { lbs: @set_group.lbs, reps: @set_group.reps } }, as: :json
    end

    assert_response 201
  end

  test "should show set_group" do
    get set_group_url(@set_group), as: :json
    assert_response :success
  end

  test "should update set_group" do
    patch set_group_url(@set_group), params: { set_group: { lbs: @set_group.lbs, reps: @set_group.reps } }, as: :json
    assert_response 200
  end

  test "should destroy set_group" do
    assert_difference('SetGroup.count', -1) do
      delete set_group_url(@set_group), as: :json
    end

    assert_response 204
  end
end
