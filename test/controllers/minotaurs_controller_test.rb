require "test_helper"

class MinotaursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @minotaur = minotaurs(:one)
  end

  test "should get index" do
    get minotaurs_url
    assert_response :success
  end

  test "should get new" do
    get new_minotaur_url
    assert_response :success
  end

  test "should create minotaur" do
    assert_difference("Minotaur.count") do
      post minotaurs_url, params: { minotaur: {  } }
    end

    assert_redirected_to minotaur_url(Minotaur.last)
  end

  test "should show minotaur" do
    get minotaur_url(@minotaur)
    assert_response :success
  end

  test "should get edit" do
    get edit_minotaur_url(@minotaur)
    assert_response :success
  end

  test "should update minotaur" do
    patch minotaur_url(@minotaur), params: { minotaur: {  } }
    assert_redirected_to minotaur_url(@minotaur)
  end

  test "should destroy minotaur" do
    assert_difference("Minotaur.count", -1) do
      delete minotaur_url(@minotaur)
    end

    assert_redirected_to minotaurs_url
  end
end
