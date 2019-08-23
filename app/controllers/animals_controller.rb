class AnimalsController < ApplicationController

  def index
    @animals = {"animal": "This is where the list of animals will go."}
    json_response(@animals)
  end

  private
    def json_response(object, status = :ok)
      render json: object, status: status
    end

end
