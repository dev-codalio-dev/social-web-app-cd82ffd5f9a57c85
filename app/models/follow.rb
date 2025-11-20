# frozen_string_literal: true

class Follow < ApplicationRecord
  belongs_to :follower, class_name: "User"
  belongs_to :followed, class_name: "User"

  validates :follower_id, uniqueness: { scope: :followed_id }
  validate :cannot_follow_self

  private

    def cannot_follow_self
      if follower_id == followed_id
        errors.add(:followed_id, "cannot follow yourself")
      end
    end

    rhino_owner :follower
    rhino_references [ :follower, :followed ]
end
