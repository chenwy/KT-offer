class WelcomeController < ApplicationController

  def index
    flash[:notice] = 'test msg'

  end
end
