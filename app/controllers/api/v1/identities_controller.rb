class Api::V1::IdentitiesController < ApiController
  def index
    @identities = current_fi.identities
  end

  def create
    @identity = Identity.find_or_initialize_by(ssn: ssn.gsub(/[^\d]/, ''))
    @identity.financial_institutions << current_fi unless @identity.financial_institutions.include?(current_fi)
    @identity.assign_attributes(create_params)
    if @identity.save
      render :show
    else
      head :unprocessable_entity
    end
  end

  private

  def ssn
    create_params[:ssn]
  end

  def create_params
    params.permit(
      :first_name,
      :middle_name,
      :last_name,
      :date_of_birth,
      :ssn
    )
  end
end
