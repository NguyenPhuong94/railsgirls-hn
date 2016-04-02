require 'test_helper'

class BangdiemsControllerTest < ActionController::TestCase
  setup do
    @bangdiem = bangdiems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bangdiems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bangdiem" do
    assert_difference('Bangdiem.count') do
      post :create, bangdiem: { Họ: @bangdiem.Họ, Lớp: @bangdiem.Lớp, Ngày: @bangdiem.Ngày, kết: @bangdiem.kết, tháng: @bangdiem.tháng, tên: @bangdiem.tên, tổng: @bangdiem.tổng, Điểm: @bangdiem.Điểm }
    end

    assert_redirected_to bangdiem_path(assigns(:bangdiem))
  end

  test "should show bangdiem" do
    get :show, id: @bangdiem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bangdiem
    assert_response :success
  end

  test "should update bangdiem" do
    patch :update, id: @bangdiem, bangdiem: { Họ: @bangdiem.Họ, Lớp: @bangdiem.Lớp, Ngày: @bangdiem.Ngày, kết: @bangdiem.kết, tháng: @bangdiem.tháng, tên: @bangdiem.tên, tổng: @bangdiem.tổng, Điểm: @bangdiem.Điểm }
    assert_redirected_to bangdiem_path(assigns(:bangdiem))
  end

  test "should destroy bangdiem" do
    assert_difference('Bangdiem.count', -1) do
      delete :destroy, id: @bangdiem
    end

    assert_redirected_to bangdiems_path
  end
end
