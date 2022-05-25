class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :faqs]

  def home
  end

  def faqs
  end
end
