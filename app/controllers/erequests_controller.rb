class ErequestsController < ApplicationController
  before_action :set_erequest, only: [:show, :update, :destroy]
    # GET /erequests
  def index
    @erequests = Erequest.all
    json_response(@erequests)
  end

  # POST /erequests
  def create
    @erequest = Erequest.create!(erequest_params)
    json_response(@erequest, :created)
  end

  # GET /erequests/:id
  def show
    json_response(@erequest)
  end

  # PUT /erequests/:id
  def update
    @erequest.update(erequest_params)
    json_response(status: 'SUCCESS', message: 'updated the erequest')
  end

  # DELETE /erequests/:id
  def destroy
    @erequest.destroy
    json_response(status: 'SUCCESS', message: 'deleted the erequest')

  end

  private

  def erequest_params
    # whitelist params
    params.permit(:title, :created_by)
  end

  def set_erequest
    @erequest = Erequest.find(params[:id])
  end
end
