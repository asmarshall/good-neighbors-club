class PagesController < ApplicationController
  def index
  end

  def about
  end

  def contact
  end

  def submit
  end

  def restaurants
    @restaurants = Post.restaurants.order("created_at DESC")
  end

  def bars_breweries
    @bars_breweries = Post.bars_breweries.order("created_at DESC")
  end

  def coffee_tea_shops
    @coffee_tea_shops = Post.coffee_tea_shops.order("created_at DESC")
  end

  def boutiques
    @boutiques = Post.boutiques.order("created_at DESC")
  end

  def farms_flowers
    @farms_flowers = Post.farms_flowers.order("created_at DESC")
  end

  def fitness
    @fitness = Post.fitness.order("created_at DESC")
  end

  def general_ways_to_help
    @general_ways_to_help = Post.general_ways_to_help.order("created_at DESC")
  end

  def resources_mental_health
    @resources_mental_health = Post.resources_mental_health.order("created_at DESC")
  end
end
