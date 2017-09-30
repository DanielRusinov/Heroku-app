class ApplicationController < ActionController::Base

def calc
	a = params[:a].to_i
	b = params[:b].to_i

	render html: a + b
end

  protect_from_forgery with: :exception
end


