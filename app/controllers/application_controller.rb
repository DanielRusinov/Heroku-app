require 'csv'

class ApplicationController < ActionController::Base
	protect_from_forgery with: :null_sessions

def sums
	
	csv = CSV.parse(params[:file].read, converters: :numeric)
        
	sum = 0  
	csv.each do |row|
		sum = sum + row[0].to_f
	end

	render plain: "%.2f" % sum.ceil

end

def filters

	csv = CSV.parse(params[:file].read, converters: :numeric)

	sum = 0;
	csv.each do |row|
		if row[2] % 2 != 0
			sum = sum + row[1]
		end
	end
	
	render plain: "%.2f" % sum.ceil
end

def intervals

	csv = CSV.parse(params[:file].read, converters: :numeric)
	valuesFirstCol = csv.map { |n| n[0] }
	
	sum = 0;
	max_sum = 0
	
	if csv.length < 30
		csv.each do |row|
			sum = sum + row[0]
		end
		max_sum = sum
	else

		i = 0;
		j = 0;
	while i <= csv.lenght - 30 do
		sum = 0;

		while j <= 30 do

			sum = sum + valuesFirstCol[j + i]
			 
		end
	
		if sum > max_sum
			max_sum = sum
			break;
		end 

		i++
	end
	end

	render plain: "%.2f" % max_sum.ceil
	
end

end





