require 'test_helper'

class InterviewsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Interview.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Interview.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Interview.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to interview_url(assigns(:interview))
  end

  def test_edit
    get :edit, :id => Interview.first
    assert_template 'edit'
  end

  def test_update_invalid
    Interview.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Interview.first
    assert_template 'edit'
  end

  def test_update_valid
    Interview.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Interview.first
    assert_redirected_to interview_url(assigns(:interview))
  end

  def test_destroy
    interview = Interview.first
    delete :destroy, :id => interview
    assert_redirected_to interviews_url
    assert !Interview.exists?(interview.id)
  end
end
