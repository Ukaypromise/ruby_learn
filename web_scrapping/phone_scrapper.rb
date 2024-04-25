require 'httparty'
require 'nokogiri'


def phone_scrapper

  response = HTTParty.get('https://www.jumia.com.ng/mlp-infinix-store/')
  parsed_response = Nokogiri::HTML(response.body)
  phone_list = parsed_response.css('.col.c-prd')

  phones =  phone_list.map do |phone|
    {
      name: phone.css('.name').text.gsub!(/"/, ''),
      price: phone.css('.prc').text.gsub('₦', '').gsub(',', '').to_i,
      img: phone.css('.img').attribute('data-src').value
    }
  end

  phones = phones.select do |phone|
    if phone[:name].is_a?(String)
       phone[:price] > 120000 && phone[:name].include?('Infinix Hot 40 Pro')
    end
  end

  File.open('phone_listing.json', 'wb') do |file|
    file.write(phones.to_json)
  end
end


phone_scrapper
