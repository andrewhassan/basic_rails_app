class DataPointController < ApplicationController
	def index
		@data_points = DataPoint.all
		render json: @data_points
	end

	def show
		@data_point = DataPoint.find(params[:id])
	end

	def create
		@data_point = DataPoint.new(params[:data_point])
		if @data_point.save
			render json: @data_point, status: :ok
		else
			render json: @data_point, status: :unprocessable_entity
		end
	end

	def update
	end

	def destroy
		@data_point = DataPoint.find(params[:id])
		if @data_point.destroy
			render json: {}, status: :ok
		else
			render json: @data_point, status: :internal_server_error
		end
	end
end
