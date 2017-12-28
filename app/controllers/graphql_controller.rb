class GraphqlController < ApplicationController
  def execute
    query = params[:query]
    result = GraphqlDemoSchema.execute query
    render json: result
  end
end
