class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :car
  validates :starts_at, presence: true
  validates :ends_at, presence: true

  def confirm_booking
    self.accepted == true
  end
end
