class ApiController < ApplicationController
  attr_reader :fi

  authenticate_or_request_with_http_basic do |username, password|
    fi = FinancialInstitution.find_by(name: username)
    if fi && ActiveSupport::SecurityUtils.secure_compare(fi.access_token, password)
      @current_fi = @fi
      true
    else
      head :unauthorized
      false
    end
  end
end
