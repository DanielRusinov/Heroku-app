Rails.application.routes.draw do
	 
	root 'application#sums'
	post  '/sums',    to: 'application#sums'
 
end
