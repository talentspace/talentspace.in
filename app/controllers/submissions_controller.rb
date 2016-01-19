class SubmissionsController < ApplicationController
  before_action :find_submission, only: [:show, :edit, :update, :destroy]
  before_action :ensure_current_user_is_superadmin!, only: [:index, :destroy, :show]
  before_action :check_spam!

  def index
    @submissions = Submission.all
  end


  def new
    @submission = Submission.new
  end

  def show
  end

  def create
    @submission = Submission.new(submission_params)
    if @submission.save
      send_submission_email_notification(@submission, 'New')
      flash[:notice] = "Successfully submitted your application. We will contact you in a few days if you are accepted."
      redirect_to root_path
    else
      render :action => 'new'
    end
  end

  def edit
  end

  def update
    if @submission.update_attributes(submission_params)
      send_submission_email_notification(@submission, 'Updated')
      flash[:notice] = "Successfully updated your application."
      redirect_to root_path
    else
      render :action => 'edit'
    end
  end

  def destroy
    @submission.destroy
    flash[:notice] = "Successfully destroyed submission."
    redirect_to submissions_url
  end

  private

    def find_submission
      @submission = Submission.find_by_uniq_id(params[:id])
    end

    def submission_params
      params.require(:submission).permit(:name, :email, :phone_number, :bio, :sample_program)
    end

    def check_spam!
      if params[:content].present?
        render text: 'Unauthorized', status: :unauthorized
      end
    end

    def send_submission_email_notification(submission, status)
      User.super_admins.each do |user|
        Mailer.delay.send_new_application_notification(submission, user, status)
      end
    end
end

