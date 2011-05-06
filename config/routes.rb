Rails.application.routes.draw do
  
  # Subscribe to the newsletter
  match 'newsletter/subscribe' => 'madmimi#subscribe', :via => :post
  
end