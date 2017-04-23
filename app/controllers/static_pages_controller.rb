class StaticPagesController < ApplicationController
  skip_before_action :require_login, :only => [:help]
  def home
  end

  def help
  end

  def about
  end

  def contact
  end
end
