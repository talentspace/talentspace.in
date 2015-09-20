# require 'test_helper'

# class SubmissionsControllerTest < ActionController::TestCase
#   setup do
#     @submission = submissions(:one)
#   end

#   test "should get index" do
#     get :index
#     assert_response :success
#     assert_not_nil assigns(:submissions)
#   end

#   test "should get new" do
#     get :new
#     assert_response :success
#   end

#   test "should create submission" do
#     assert_difference('Submission.count') do
#       post :create, submission: { bio: @submission.bio, email: @submission.email, name: @submission.name, phone_number: @submission.phone_number, sample_program: @submission.sample_program }
#     end

#     assert_redirected_to submission_path(assigns(:submission))
#   end

#   test "should show submission" do
#     get :show, id: @submission.uniq_id
#     assert_response :success
#   end

#   test "should get edit" do
#     get :edit, id: @submission.uniq_id
#     assert_response :success
#   end

#   test "should update submission" do
#     patch :update, id: @submission.uniq_id, submission: { bio: @submission.bio, email: @submission.email, name: @submission.name, phone_number: @submission.phone_number, sample_program: @submission.sample_program }
#     assert_redirected_to submission_path(assigns(:submission))
#   end

#   test "should destroy submission" do
#     assert_difference('Submission.count', -1) do
#       delete :destroy, id: @submission.uniq_id
#     end

#     assert_redirected_to submissions_path
#   end
# end
