require 'spec_helper'

describe Product do
	before { @pro = Product.new(name: "Example Product", description: "example") }

  subject { @pro }

  it { should respond_to(:name) }
  it { should respond_to(:description) }
end
  
