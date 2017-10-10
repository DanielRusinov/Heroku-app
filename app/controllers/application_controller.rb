require 'csv'

class ApplicationController < ActionController::Base
	protect_from_forgery with: :null_sessions

def sums
	
	csv = CSV.parse(params[:file], converters: :numeric)
        
	sum = 0  
	csv.each do |row|
		sum = sum + row[0].to_f
	end

	render plain: "%.2f" % sum.ceil

end

end


