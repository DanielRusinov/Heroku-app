require 'csv'

class ApplicationController < ActionController::Base
	protect_from_forgery with: :null_sessions

def sums
	csv_file = (params[:file].read)
	csv = CSV.parse(csv_file, converters: :numeric)
	
	sum = 0
	csv.each do |row|
  		sum = sum + row[0]
	
	render plain: "%.2f" % sum.ceil
end

end 


#def calc
#	a = params[:a].to_i
#	b = params[:b].to_i
#
#	render html: a + b
#end
#
#def quad
#	a = params[:a].to_i
#	b = params[:b].to_i
#	c = params[:c].to_i
#
#	d = b*b - 4*a*c;
#
#	if( d < 0)
#		puts "Diskriminantata e pod 0 e pedal"
#	elsif( d == 0)
#		x = -b / (2 * a)
#	else x = (-b + Math.sqrt(d)) / (2 * a)
#		y = (-b - Math.sqrt(d)) / (2 * a)
#	end
#
#	render html: "x1 = #{x}, x2 = #{y}"  
#end

  
end


