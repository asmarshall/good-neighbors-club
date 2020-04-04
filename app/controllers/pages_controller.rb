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
    @restaurants = Post.is_public.restaurants.order("created_at DESC")
  end

  def bars_breweries
    @bars_breweries = Post.is_public.bars_breweries.order("created_at DESC")
  end

  def coffee_tea_shops
    @coffee_tea_shops = Post.is_public.coffee_tea_shops.order("created_at DESC")
  end

  def boutiques
    @boutiques = Post.is_public.boutiques.order("created_at DESC")
  end

  def farms_flowers
    @farms_flowers = Post.is_public.farms_flowers.order("created_at DESC")
  end

  def fitness
    @fitness = Post.is_public.fitness.order("created_at DESC")
  end

  def general_ways_to_help
    @general_ways_to_help = Post.is_public.general_ways_to_help.order("created_at DESC")
  end

  def resources_mental_health
    @resources_mental_health = Post.is_public.resources_mental_health.order("created_at DESC")
  end
end
