class StudentsController < ApplicationController
  def index
    @students = User.where(role: 'student').order(:first_name)
  end

  def add_as_student
    submission = Submission.find params[:id]
    student = submission.add_as_student

    redirect_to submissions_path
  end
end
