class Car < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :brand, presence: true
  validates :model, presence: true
  validates :address, presence: true
  validates :price_per_day, numericality: { greater_than: 0 }, presence: true
  has_one_attached :photo, dependent: :destroy
  after_commit :add_default_photo, on: %i[create update]

  def add_default_photo
    unless photo.attached?
      self.photo.attach(io: File.open(Rails.root.join("app", "assets", "images", "voiture_default.jpg")), filename: 'voiture_default.jpg' , content_type: "image/jpg")
    end
  end
end
