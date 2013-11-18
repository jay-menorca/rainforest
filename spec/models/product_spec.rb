require 'spec_helper'

describe Product do
 it "should have a name" do
    product = Product.new
    expect(product.name).to eq(nil)
    expect(product).not_to be_valid
  end

  it "should have a description" do
    product = Product.new
    expect(product.description).to eq(nil)
    expect(product).not_to be_valid
  end

  it "should have a price_in_cents" do
    product = Product.new
    expect(product.price_in_cents).to eq(nil)
    expect(product).not_to be_valid
  end

  it "fails validation with a non-integer price_in_cents value" do
    product = Product.new(name: "adf", price_in_cents: "blah")
    expect(product).to be_invalid
  end

  it "should return formatted price" do
    product = Product.new(:price_in_cents => 80)
    expect(product.formatted_price).to eq("0.80")
  end

  #it { should have_many(:reviews) }

  it "should return only unique users through its reviews" do
    product = Product.new
    
  end
end