class Comment < ActiveRecord::Base
  before_save {name.capitalize!}
  belongs_to :blog
  default_scope -> { order(created_at: :desc) }
  validates :content,presence: true
  validates :name, presence: true

end
