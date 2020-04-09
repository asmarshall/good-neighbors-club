class Post < ApplicationRecord
  CATEGORIES = %w[restaurant bar brewery coffee tea boutique farm flowers fitness resources mental_health general_ways_to_help other].freeze
  VIEWABLE_CATEGORIES = [
    ['Restaurant', 'restaurant'],
    ['Bar', 'bar'],
    ['Brewery', 'brewery'],
    ['Coffee', 'coffee'],
    ['Tea', 'tea'],
    ['Retail Shop', 'boutique'],
    ['Farm', 'farm'],
    ['Flowers', 'flowers'],
    ['Fitness', 'fitness'],
    ['Resources for Small Businesses', 'resources'],
    ['Well-Being', 'mental_health'],
    ['General ways to help', 'general_ways_to_help'],
    ['Other', 'other']
  ]

  scope :restaurants, -> { where(category: 'restaurant') }
  scope :bars_breweries, -> { where(category: %w[bar brewery]) }
  scope :coffee_tea_shops, -> { where(category: %w[coffee tea]) }
  scope :boutiques, -> { where(category: 'boutique') }
  scope :farms_flowers, -> { where(category: %w[farm flowers]) }
  scope :fitness, -> { where(category: %w[fitness mental_health]) }
  scope :general_ways_to_help, -> { where(category: 'general_ways_to_help') }
  scope :resources_mental_health, -> { where(category: 'resources') }
  scope :is_public, -> { where(public: true) }
end
