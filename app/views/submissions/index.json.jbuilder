json.array!(@submissions) do |submission|
  json.extract! submission, :id, :name, :email, :phone_number, :bio, :sample_program
  json.url submission_url(submission, format: :json)
end
