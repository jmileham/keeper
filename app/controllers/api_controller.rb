require 'active_support/security_utils'

class ApiController < ApplicationController
  before_action :return_json
  before_action :authenticate
  skip_before_action :verify_authenticity_token

  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      fi = FinancialInstitution.find_by(name: username)
      if fi && ActiveSupport::SecurityUtils.secure_compare(fi.access_token, password)
        @current_fi = fi
        true
      else
        head :unauthorized
        false
      end
    end
  end

  def current_fi
    @current_fi
  end

  private

  def return_json
    request.format = :json
  end
end
