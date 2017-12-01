class Comment < ActiveRecord::based
  belongs_to :user
  belongs_to :project
end
