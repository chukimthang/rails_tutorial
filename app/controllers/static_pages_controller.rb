class StaticPagesController < ApplicationController
  def home
    if logged_in?
      @micropost = current_user.microposts.build 
      @feed_items = current_user.feed.desc.paginate page: params[:page], 
        per_page: Settings.number.ten
    end
  end

  def help
  end

  def about
  end

  def contact
  end
end
