require 'test_helper'

class SituationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @situation = situations(:one)
  end

  test "should get index" do
    get situations_url, as: :json
    assert_response :success
  end

  test "should create situation" do
    assert_difference('Situation.count') do
      post situations_url, params: { situation: { total_abducted: @situation.total_abducted, total_non_abducted: @situation.total_non_abducted, total_survivors: @situation.total_survivors } }, as: :json
    end

    assert_response 201
  end

  test "should show situation" do
    get situation_url(@situation), as: :json
    assert_response :success
  end

  test "should update situation" do
    patch situation_url(@situation), params: { situation: { total_abducted: @situation.total_abducted, total_non_abducted: @situation.total_non_abducted, total_survivors: @situation.total_survivors } }, as: :json
    assert_response 200
  end

  test "should destroy situation" do
    assert_difference('Situation.count', -1) do
      delete situation_url(@situation), as: :json
    end

    assert_response 204
  end
end
