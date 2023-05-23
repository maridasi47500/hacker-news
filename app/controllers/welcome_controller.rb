class WelcomeController < ApplicationController
  def index
@news=News.all.limit(10).offset(params[:page])
@news2=News.all.limit(10).offset(params[:page].to_i+10)
  end
  def article
    @news=News.find_by_url(params[:title])
  end
end
