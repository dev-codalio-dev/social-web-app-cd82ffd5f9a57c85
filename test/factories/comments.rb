# frozen_string_literal: true

FactoryBot.define do
  factory :comment do
    comment_text { "MyText" }
    post { nil }
    user { nil }
  end
end
