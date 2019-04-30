class PagesController < ApplicationController
  def about
  end

  def contact
  end

  def home
  end

  def somethingelse
    @something = params[:something]
    @another_one = params[:another_one]
  end
end
