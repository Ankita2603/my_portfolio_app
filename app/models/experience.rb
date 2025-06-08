class Experience < ApplicationRecord
  belongs_to :user_profile

  validates :company, :role, :start_date, :description, presence: true
  validate :end_date_after_start_date

  def end_date_after_start_date
    return if end_date.blank? || start_date.blank?

    if end_date < start_date
      errors.add(:end_date, "must be after the start date")
    end
  end
end
