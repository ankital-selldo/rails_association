class Customer < ApplicationRecord
  has_and_belongs_to_many :products

  before_save :display_customer_count

  after_save :total_count

  def display_customer_count
    puts "Customer count till now : #{Customer.count}\n"
  end

  def total_count
    puts "Customer count till now : #{Customer.count}\n"
  end
end