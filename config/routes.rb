Rails.application.routes.draw do
	 
	root 'application#sums'
	post  '/sums' => 'application#sums'
 
end
