class StaticPagesController < ApplicationController
  skip_before_action :authenticate_user!, :only => [:index, :privacy_policy]
  
  def index
  end

  def privacy_policy
  end
end
