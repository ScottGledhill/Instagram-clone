
FactoryGirl.define do
  factory :post do
    caption "nofilter"
    image Rack::Test::UploadedFile.new(Rails.root + '/Users/ScottGledhill/Desktop/img/coffee.jpg', 'image/jpg')
  end
end
