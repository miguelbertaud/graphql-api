class MoviesController < ApplicationController
    # GET /movies
   def query
     result = GraphqlTutorialSchema.execute(params[:query])
     render json: result
   end
end
