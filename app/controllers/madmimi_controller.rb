class MadmimiController < ApplicationController
  
  # Add a user to the newsletter
  # Params:
  # - email (post)
  def subscribe
  
    # Get the parameters
    email = params[:email]
    newsletter = MadmimiSubscribeForm.config.newsletter
        
    # Get the Madmimi wrapper
    mimi = MadMimi.new(MadmimiSubscribeForm.config.email, MadmimiSubscribeForm.config.api_key)
    
    # Add the email to the newsletter
    mimi.new_list(newsletter)
    mimi.add_to_list(email, newsletter)
    
    # Return to the previous page, with a message for the user
    flash[:notice] = t('madmimi_subscribe_form.success_message')
    redirect_to request.referer
    
  end
  
end
