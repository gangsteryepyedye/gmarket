class Notifier < ActionMailer::Base
  default :from => "238357@gmail.com"
  
  def notify(user)
    @user = user
    @url="http://www.thegmarket.me"
    mail(:to => "jinxin@grinnell.edu",
         :subject => "Someone commmented on your Item") do |format|
      	  format.html { render 'notify_email' }
    end
  	
  	
  end

  
end
