class ShoutController < ApplicationController
   def create
      p 'Parametri'
  
      p params[:lol]
      
      unless params.key? :lol
	 render :json => { :errors => 'No shout message' }, :status => :bad_request
	 return
      end
      shout = params[:lol]
   
      render :json => { :errors => 'Done' }, :status => :ok
   end
end