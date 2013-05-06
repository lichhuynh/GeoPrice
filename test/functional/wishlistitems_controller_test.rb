require 'test_helper'

class WishlistitemsControllerTest < ActionController::TestCase
  setup do
    @wishlistitem = wishlistitems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wishlistitems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wishlistitem" do
    assert_difference('Wishlistitem.count') do
      post :create, wishlistitem: { DesiredPrice: @wishlistitem.DesiredPrice, ListID: @wishlistitem.ListID, PriceVariance: @wishlistitem.PriceVariance, ProductID: @wishlistitem.ProductID, Quantity: @wishlistitem.Quantity, StoreType: @wishlistitem.StoreType }
    end

    assert_redirected_to wishlistitem_path(assigns(:wishlistitem))
  end

  test "should show wishlistitem" do
    get :show, id: @wishlistitem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wishlistitem
    assert_response :success
  end

  test "should update wishlistitem" do
    put :update, id: @wishlistitem, wishlistitem: { DesiredPrice: @wishlistitem.DesiredPrice, ListID: @wishlistitem.ListID, PriceVariance: @wishlistitem.PriceVariance, ProductID: @wishlistitem.ProductID, Quantity: @wishlistitem.Quantity, StoreType: @wishlistitem.StoreType }
    assert_redirected_to wishlistitem_path(assigns(:wishlistitem))
  end

  test "should destroy wishlistitem" do
    assert_difference('Wishlistitem.count', -1) do
      delete :destroy, id: @wishlistitem
    end

    assert_redirected_to wishlistitems_path
  end
end
