class IdentitiesController < ApiController
  def index
    @identities = fi.identities
  end
end
