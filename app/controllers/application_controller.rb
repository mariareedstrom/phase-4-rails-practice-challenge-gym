class ApplicationController < ActionController::API

  rescue_from ActiveRecord::RecordNotFound, with: :respond_when_not_found
  rescue_from ActiveRecord::RecordInvalid, with: :respond_when_record_invalid

  private

  def respond_when_not_found(error)
    render json: {error: error.full_messages}, status: :not_found
  end

  def respond_when_record_invalid(error)
    render json: {error: error.full_messages}, status: :unprocessable_entity
  end


end
