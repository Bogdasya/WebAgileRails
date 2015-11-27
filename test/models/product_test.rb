require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  test "Invalid params for new product" do
    product = Product.new
    assert product.invalid?
    assert product.errors[:title].any?
    assert product.errors[:description].any?
    assert product.errors[:price].any?
    assert product.errors[:image_url].any?
  end

  test "Invalid price" do
    product = Product.new(title: "Test", description: "qwerty", image_url: "test.jpg")
    product.price = -1
    assert product.invalid?
    product.price = 5
    assert product.invalid?
  end
end
