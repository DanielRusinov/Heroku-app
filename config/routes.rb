Rails.application.routes.draw do
	 
	match '/sums', :to => 'application#sums', :via => [:post]
 
end
