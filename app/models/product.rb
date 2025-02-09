class Product < ApplicationRecord
  validates :name, presence: true

  has_one :product_warranty

  has_one :warranty, through: :product_warranty

  has_many :product_category

  has_many :category, through: :product_category

  has_and_belongs_to_many :customers

  before_validation :has_product_color

  before_save :display_products

  after_destroy :notify_user

  def display_products
    # Time consuming

    # Product.all.each do |p|
    #   puts "#{p.name}, #{p.color}\n"
    # end

    Product.find_each do |p|
      puts "#{p.name}, #{p.color}\n"
    end
  end

  def has_product_color
    if color.blank?
      self.color = "black"
    end

    puts "Color set by default"
  end


  def notify_user
    puts "User deleted"
  end
end