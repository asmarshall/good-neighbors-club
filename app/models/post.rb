class Post < ApplicationRecord
  CATEGORIES = %w[restaurant bar brewery coffee tea boutique farm flowers fitness resources mental_health general_ways_to_help other].freeze

  scope :restaurants, -> { where(category: 'restaurant') }
  scope :bars_breweries, -> { where(category: %w[bar brewery]) }
  scope :coffee_tea_shops, -> { where(category: %w[coffee tea]) }
  scope :boutiques, -> { where(category: 'boutique') }
  scope :farms_flowers, -> { where(category: %w[farm flower]) }
  scope :fitness, -> { where(category: 'fitness') }
  scope :general_ways_to_help, -> { where(category: 'general_ways_to_help') }
  scope :resources_mental_health, -> { where(category: %w[resources mental_health]) }
end