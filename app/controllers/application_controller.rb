class ApplicationController < ActionController::API
  include ActionController::Cookies

  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  def render_unprocessable_entity_response(e)
    render json: {errors: e.record.errors.full_messages}, status: :unprocessable_entity
end

def render_not_found_response
  render json: { error: "Activity not found"}, status: :not_found
end
end
