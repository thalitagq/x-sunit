namespace :dev do
	task setup: :environment do

		
		10.times do 
			Survivor.create({
				name: Faker::Name.name,
				age: Faker::Number.number(2),
				latitude: Faker::Address.latitude,
				longitude: Faker::Address.longitude
			})
		end


		10.times do |i|
			AbductionReport.create!(
				amount: Faker::Number.between(0, 10)
				)
		end
	
	end	
end
	