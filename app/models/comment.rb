# frozen_string_literal: true

class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user

  validates :comment_text, presence: true

  rhino_owner :post
  rhino_references [ :post, :user ]
end
