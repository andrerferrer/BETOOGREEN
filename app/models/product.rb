class Product < ApplicationRecord
  has_many_attached :photos
  belongs_to :user
  has_many :listings
  has_many :reviews
  has_many :purchases, through: :listings

  scope :top_sellers_by_quantity, ->(user) { 
    where(user: user)
      .joins(:listings)
      .joins(:purchases)
      .group(:id)
      .order('sum(purchases.quantity) desc') 
  }

# can be refactored with a #reduce or AR
  def total_sellings_quantity
    sum = 0
    self.listings.each do |listing|
      sum += listing.quantity_sold
    end
    return sum
  end

  def total_sellings_value
    sum = 0
    self.listings.each do |listing|
      sum += listing.total_sales
    end
    return sum
  end


end

# Product.all.map { |p| { id: p.id, value: p.total_sellings_value } }.reject { |h| h[:value].zero? }.sort_by { |h| h[:value] }.reverse