require 'httparty'
require 'nokogiri'

def convert_price(price)
  price.gsub('$', '').gsub(',', '').to_i
end

def car_shopper
  response = HTTParty.get('https://code.evgenyrahman.com/rubycourse/carlist.html')
  parsed_html = Nokogiri::HTML(response.body)

  carlist = parsed_html.css('.card.car')
  cars = carlist.map do |car|
    {
    name: car.css('.make').text,
    year: car.css('.year').text.to_i,
    price: convert_price(car.css('.price').text),
    rating: car.css('.star.rating').attribute('data-rating').value.to_i
    }
  end

  cars = cars.select do |car|
    car[:year] > 2014 && car[:price] < 30000 && car[:rating] > 3
  end

  File.open('car_listing.json', 'wb') do |file|
    file << cars.to_json
  end
  pp cars

  puts "There are #{cars.count} cars."

end

car_shopper
