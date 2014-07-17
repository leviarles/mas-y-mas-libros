require 'test_helper'

class DetailordersControllerTest < ActionController::TestCase
  setup do
    @detailorder = detailorders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:detailorders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create detailorder" do
    assert_difference('Detailorder.count') do
      post :create, detailorder: { book_id: @detailorder.book_id, cantidad: @detailorder.cantidad, sale_id: @detailorder.sale_id }
    end

    assert_redirected_to detailorder_path(assigns(:detailorder))
  end

  test "should show detailorder" do
    get :show, id: @detailorder
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @detailorder
    assert_response :success
  end

  test "should update detailorder" do
    patch :update, id: @detailorder, detailorder: { book_id: @detailorder.book_id, cantidad: @detailorder.cantidad, sale_id: @detailorder.sale_id }
    assert_redirected_to detailorder_path(assigns(:detailorder))
  end

  test "should destroy detailorder" do
    assert_difference('Detailorder.count', -1) do
      delete :destroy, id: @detailorder
    end

    assert_redirected_to detailorders_path
  end
end
