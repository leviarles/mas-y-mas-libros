require 'test_helper'

class DetailsalesControllerTest < ActionController::TestCase
  setup do
    @detailsale = detailsales(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:detailsales)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create detailsale" do
    assert_difference('Detailsale.count') do
      post :create, detailsale: { book_id: @detailsale.book_id, cantidad: @detailsale.cantidad, sale_id: @detailsale.sale_id }
    end

    assert_redirected_to detailsale_path(assigns(:detailsale))
  end

  test "should show detailsale" do
    get :show, id: @detailsale
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @detailsale
    assert_response :success
  end

  test "should update detailsale" do
    patch :update, id: @detailsale, detailsale: { book_id: @detailsale.book_id, cantidad: @detailsale.cantidad, sale_id: @detailsale.sale_id }
    assert_redirected_to detailsale_path(assigns(:detailsale))
  end

  test "should destroy detailsale" do
    assert_difference('Detailsale.count', -1) do
      delete :destroy, id: @detailsale
    end

    assert_redirected_to detailsales_path
  end
end
