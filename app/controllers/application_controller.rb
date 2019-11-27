# frozen_string_literal: true

class ApplicationController < ActionController::Base
  # private method that loads stuff
  before_action :load_cart_instance

  private

  def load_cart_instance
    @cart = Product.find(session[:cart].collect { |product| product['id'] })
    @total = 0
    @cart.each_with_index do |product, i|
      @total += product.price * session[:cart][i]['quantity']
    end
  end

  helper_method :load_cart_instance

  def navigation_pages
    @navigation_pages = Page.where(show_in_navbar: true)
  end
  helper_method :navigation_pages
end
