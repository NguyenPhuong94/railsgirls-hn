require 'test_helper'

class BangdiemhocsinhsControllerTest < ActionController::TestCase
  setup do
    @bangdiemhocsinh = bangdiemhocsinhs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bangdiemhocsinhs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bangdiemhocsinh" do
    assert_difference('Bangdiemhocsinh.count') do
      post :create, bangdiemhocsinh: { Date: @bangdiemhocsinh.Date, Lop: @bangdiemhocsinh.Lop, Name: @bangdiemhocsinh.Name, Sumary: @bangdiemhocsinh.Sumary }
    end

    assert_redirected_to bangdiemhocsinh_path(assigns(:bangdiemhocsinh))
  end

  test "should show bangdiemhocsinh" do
    get :show, id: @bangdiemhocsinh
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bangdiemhocsinh
    assert_response :success
  end

  test "should update bangdiemhocsinh" do
    patch :update, id: @bangdiemhocsinh, bangdiemhocsinh: { Date: @bangdiemhocsinh.Date, Lop: @bangdiemhocsinh.Lop, Name: @bangdiemhocsinh.Name, Sumary: @bangdiemhocsinh.Sumary }
    assert_redirected_to bangdiemhocsinh_path(assigns(:bangdiemhocsinh))
  end

  test "should destroy bangdiemhocsinh" do
    assert_difference('Bangdiemhocsinh.count', -1) do
      delete :destroy, id: @bangdiemhocsinh
    end

    assert_redirected_to bangdiemhocsinhs_path
  end
end
