class Project < ApplicationRecord
  belongs_to :user_profile

  validates :title, :description, :tech_stack, presence: true

  before_save :strip_whitespace

  private

  def strip_whitespace
    self.github_link = github_link.strip
    self.live_demo = live_demo.strip if live_demo.present?
  end
end
