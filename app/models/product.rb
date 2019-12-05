# frozen_string_literal: true

class Product < ApplicationRecord
  belongs_to :supplier
  belongs_to :category

  validates :name, presence: true
  validates :price, presence: true

  has_one_attached :image
end
