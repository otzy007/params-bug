class ShoutController < ApplicationController
   def create
      p 'Parametri'
  
      p params[:shout]
      
      unless params.key? :shout
	 render :json => { :errors => ['No shout message'] }, :status => :bad_request
	 return
      end
      shout = params[:shout]
   
      render :json => { :errors => ['Done'] }, :status => :ok
   end
end