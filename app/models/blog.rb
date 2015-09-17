class Blog < ActiveRecord::Base
  has_many :comments
  default_scope -> { order(created_at: :desc) }
  validates :content,presence: true,uniqueness: {case_sensitive: false}
  validates :title,presence: true


end
