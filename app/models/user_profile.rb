class UserProfile < ApplicationRecord
  has_many :experiences, dependent: :destroy
  has_many :projects, dependent: :destroy
  has_many :educations, dependent: :destroy
  has_many :skills, dependent: :destroy

  has_one_attached :resume

  validates :name, presence: true
  validates :title, presence: true
  validates :about, presence: true, length: { minimum: 20 }

  validate :resume_format

  private

  def resume_format
    return unless resume.attached?

    if !resume.content_type.in?(%w(application/pdf))
      errors.add(:resume, "must be a PDF")
    end
  end
end
