require 'rspec'
require './furlong'

describe Furlong do

	let(:calculator) { Furlong.new }
	
	it "converts 1 mile to 1.60934 km" do
		subject.miles_to_kilometers(1).should be_within(0.0001).of(1.60934)
	end

	it "converts a marathon: 26.219 miles to 42.194988 km" do
		subject.miles_to_kilometers(26.219).should be_within(0.001).of(42.194988)
	end
	
	it "converts a furlong: 1 miles to 5 km" do
		subject.furlong_to_kilometers(1).should be_within(0.001).of(5)
	end
	
end