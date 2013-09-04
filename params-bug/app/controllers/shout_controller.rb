class ShoutController < ApplicationController
   def create
      p 'Parametri'
      p params[:shout]
      shout = params[:shout]
   
      if shout.nil? || shout == {}
	 render :json => { :errors => ['No shout message'] }, :status => :bad_request
	 return
      end
      
      render :json => { :errors => ['Done'] }, :status => :ok
   end
end