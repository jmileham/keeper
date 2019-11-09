class Api::V1::IdentitiesController < ApiController
  def index
    @identities = current_fi.identities
  end
end
