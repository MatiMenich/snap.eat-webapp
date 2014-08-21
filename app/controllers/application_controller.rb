class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  layout :layout

  before_action :set_locale
  before_action :authenticate_user!

  # Include these helpers in every controller
  include TranslationsHelper
  include QrCodeHelper
  include ProductsHelper

  private

  def layout
    # only turn it off for login pages:
    is_a?(Devise::SessionsController) ? "empty" : "application"
    # or turn layout off for every devise controller:
    # devise_controller? && "application"
  end

end
