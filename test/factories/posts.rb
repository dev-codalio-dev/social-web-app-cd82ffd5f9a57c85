# frozen_string_literal: true

FactoryBot.define do
  factory :post do
    content_text { "MyText" }
    user { nil }
  end
end
