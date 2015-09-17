class Submission < ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence: true, format: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates :phone_number, presence: true,
            :numericality => true,
            :length => { :minimum => 10, :maximum => 10 }
  validates :bio, presence: true

  before_create :generate_uniq_id

  def to_param
    uniq_id
  end

  private

  def generate_uniq_id
    self.uniq_id = loop do
      random_token = SecureRandom.hex(8)
      break random_token unless Submission.exists?(uniq_id: random_token)
    end
  end
end
