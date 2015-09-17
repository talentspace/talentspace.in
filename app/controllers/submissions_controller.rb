class SubmissionsController < InheritedResources::Base

  private

    def submission_params
      params.require(:submission).permit(:name, :email, :phone_number, :bio, :sample_program)
    end
end

