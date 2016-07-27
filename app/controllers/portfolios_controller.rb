class PortfoliosController < ApplicationController
  caches_page :home,:web,:contact,:gallery
  before_action :set_meta
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

  private
  def set_meta
    set_meta_tags description: 'Freelancing web-developer from Kerala,India. Works on Ruby on Rails , Node.js platforms.',
    keywords: 'Freelance, web-developer, Ruby on Rails',
    og: {
      title:    'Rajeev | Web-developer',
      type:     'website',
      url:      root_url,
      image:    ActionController::Base.helpers.asset_path('zmanali-single.JPG')
    }
  end

end
