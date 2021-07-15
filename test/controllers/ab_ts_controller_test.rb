require "test_helper"

class AbTsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ab_t = ab_ts(:one)
  end

  test "should get index" do
    get ab_ts_url, as: :json
    assert_response :success
  end

  test "should create ab_t" do
    assert_difference('AbT.count') do
      post ab_ts_url, params: { ab_t: { comments: @ab_t.comments, email: @ab_t.email } }, as: :json
    end

    assert_response 201
  end

  test "should show ab_t" do
    get ab_t_url(@ab_t), as: :json
    assert_response :success
  end

  test "should update ab_t" do
    patch ab_t_url(@ab_t), params: { ab_t: { comments: @ab_t.comments, email: @ab_t.email } }, as: :json
    assert_response 200
  end

  test "should destroy ab_t" do
    assert_difference('AbT.count', -1) do
      delete ab_t_url(@ab_t), as: :json
    end

    assert_response 204
  end
end
