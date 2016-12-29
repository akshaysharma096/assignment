class APIController < ActionController::API
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

  private
  def record_not_found
    response_data('No Record', 404)
  end

  def response_data(message, status, error = nil, disabled = false, updated = false)
    result = Hash.new
    result[:message] = message
    result[:status] = status
    result[:error] = error
    result[:disabled] = disabled
    result[:updated] = updated
    render json: result, status: status
  end

end