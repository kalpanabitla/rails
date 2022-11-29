class AdminController < ApplicationController
  def login
    if request.post?
      if params[:username] == "kalpana" && params[:password] == "admin"
         session[:admin] = "kalpana"
         redirect_to books_url
      else
          flash[:notice] = "invalid username/password"
          render :action => "login"
      end 
    end
  end
  def logout
    session[:admin] = nil
    flash[:notice] ="you are logged out"
    redirect_to :action=>:login
  end
end
