class DashboardsController < ApplicationController
  def show
    @user = current_user
    @products = current_user.products
    @listings = current_user.listings
    @purchases = current_user.purchases
    @open_listings = set_open
    @closed_listings = set_closed
    @top_3_products_quantity = @products.sort_by do |product|
      product.total_sellings_quantity
    end.reverse.first(3) #Can also be refactored  with AR.
    @products_sorted_by_value = @products.sort_by do |product|
      product.total_sellings_value
    end.reverse
  end

  private

  def set_open
    @listings.select { |listing| listing.end_date >= Date.today }
  end

  def set_closed
    @listings.select { |listing| listing.end_date < Date.today }
  end


end
