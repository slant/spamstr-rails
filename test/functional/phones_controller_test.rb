require 'test_helper'

class PhonesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:phones)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_phone
    assert_difference('Phone.count') do
      post :create, :phone => { }
    end

    assert_redirected_to phone_path(assigns(:phone))
  end

  def test_should_show_phone
    get :show, :id => phones(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => phones(:one).id
    assert_response :success
  end

  def test_should_update_phone
    put :update, :id => phones(:one).id, :phone => { }
    assert_redirected_to phone_path(assigns(:phone))
  end

  def test_should_destroy_phone
    assert_difference('Phone.count', -1) do
      delete :destroy, :id => phones(:one).id
    end

    assert_redirected_to phones_path
  end
end
