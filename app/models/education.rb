class Education < ApplicationRecord
  belongs_to :user_profile

  validates :degree, :institution, :start_year, :end_year, presence: true
  validate :years_valid

  def years_valid
    if end_year && start_year && end_year < start_year
      errors.add(:end_year, "must be after the start year")
    end
  end
end
