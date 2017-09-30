class ApplicationController < ActionController::Base

def calc
	a = params[:a].to_i
	b = params[:b].to_i

	render html: a + b
end

def quad
	a = params[:a].to_i
	b = params[:b].to_i
	c = params[:c].to_i

	d = b*b - 4*a*c;

	if( a < 0)
		puts "Diskriminantata e pod 0 e pedal"
	elsif( a = 0)
		x = -b / (2 * a)
	else x = (-b + Math.sqrt(d)) / (2 * a)
		y = (-b - Math.sqrt(d)) / (2 * a)

	render html: x, y
end

  protect_from_forgery with: :exception
end


