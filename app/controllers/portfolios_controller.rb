class PortfoliosController < ApplicationController
  def intro
  end
  def home
  end
  def web
  end
  def physics
  end
  def contact
  end
  def email
    MessageMailer.send_message(params).deliver_now
    flash[:success]="Your email has been sent..Will get in touch with you soon"
    redirect_to contact_path
  end
  def gallery
  end
end
