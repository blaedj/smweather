class TrialTextController < ApplicationController
  def sendtext
  	#validate user
  	#flash[:success] == "Message sent!"
  	redirect_to(root_path)
  end
  
end
