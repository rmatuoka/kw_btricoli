require 'test_helper'

class CardsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Card.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Card.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Card.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to card_url(assigns(:card))
  end

  def test_edit
    get :edit, :id => Card.first
    assert_template 'edit'
  end

  def test_update_invalid
    Card.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Card.first
    assert_template 'edit'
  end

  def test_update_valid
    Card.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Card.first
    assert_redirected_to card_url(assigns(:card))
  end

  def test_destroy
    card = Card.first
    delete :destroy, :id => card
    assert_redirected_to cards_url
    assert !Card.exists?(card.id)
  end
end
