class Project < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_attached_file :photo, styles: { medium: "300x300>"}, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
  validates :title, :presence => true
  validates :project_link, :presence => true
  validates :project_link, format: { with: URI.regexp }, if: 'project_link.present?'
end
