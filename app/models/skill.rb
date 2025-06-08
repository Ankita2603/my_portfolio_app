class Skill < ApplicationRecord
  belongs_to :user_profile

  LEVELS = %w[Beginner Intermediate Expert]

  validates :name, presence: true
  validates :level, inclusion: { in: LEVELS }

  before_validation :title_case_skill_name

  private

  def title_case_skill_name
    self.name = name.titleize if name.present?
  end
end
