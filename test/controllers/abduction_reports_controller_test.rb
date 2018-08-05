require 'test_helper'

class AbductionReportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @abduction_report = abduction_reports(:one)
  end

  test "should get index" do
    get abduction_reports_url, as: :json
    assert_response :success
  end

  test "should create abduction_report" do
    assert_difference('AbductionReport.count') do
      post abduction_reports_url, params: { abduction_report: { amount: @abduction_report.amount } }, as: :json
    end

    assert_response 201
  end

  test "should show abduction_report" do
    get abduction_report_url(@abduction_report), as: :json
    assert_response :success
  end

  test "should update abduction_report" do
    patch abduction_report_url(@abduction_report), params: { abduction_report: { amount: @abduction_report.amount } }, as: :json
    assert_response 200
  end

  test "should destroy abduction_report" do
    assert_difference('AbductionReport.count', -1) do
      delete abduction_report_url(@abduction_report), as: :json
    end

    assert_response 204
  end
end
