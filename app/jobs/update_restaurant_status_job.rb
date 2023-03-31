class UpdateRestaurantStatusJob < ApplicationJob
  queue_as :default

  def perform(restaurant_id)
    restaurant = Restaurant.find_by(id: restaurant_id)
    return unless restaurant

    restaurant.update(status: restaurant.status)
  end
end
