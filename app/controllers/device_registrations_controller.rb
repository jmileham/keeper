class DeviceRegistrationsController < ApplicationController

  helper_method :current_identity, :site, :continue_url

  def new
  end

  def site
    referer_uri = URI.parse(request.referer)
    if %w(credible-securities.test permanent-bank.test).include?(referer_uri.host)
      referer_uri.host
    else
      render :not_found
    end
  end

  def continue_url
    "http://#{site}/signup_completion/new?keeper_id=#{current_identity.id}"
  end

  def current_identity
    Identity.last
  end
end
