class Bookmark < ApplicationRecord
  belongs_to :borough
  belongs_to :user
end
