class Submission < ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence: true, format: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates :phone_number, presence: true,
            :numericality => true,
            :length => { :minimum => 10, :maximum => 10 }
  validates :bio, presence: true



end
