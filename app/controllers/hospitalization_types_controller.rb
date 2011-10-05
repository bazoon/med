class HospitalizationTypesController < ApplicationController
  # GET /hospitalization_types
  # GET /hospitalization_types.json
  def index
    @hospitalization_types = HospitalizationType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hospitalization_types }
    end
  end

  # GET /hospitalization_types/1
  # GET /hospitalization_types/1.json
  def show
    @hospitalization_type = HospitalizationType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hospitalization_type }
    end
  end

  # GET /hospitalization_types/new
  # GET /hospitalization_types/new.json
  def new
    @hospitalization_type = HospitalizationType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hospitalization_type }
    end
  end

  # GET /hospitalization_types/1/edit
  def edit
    @hospitalization_type = HospitalizationType.find(params[:id])
  end

  # POST /hospitalization_types
  # POST /hospitalization_types.json
  def create
    @hospitalization_type = HospitalizationType.new(params[:hospitalization_type])

    respond_to do |format|
      if @hospitalization_type.save
        format.html { redirect_to hospitalization_types_path, notice: I18n.t(:record_created) }
        format.json { render json: @hospitalization_type, status: :created, location: @hospitalization_type }
      else
        format.html { render action: "new" }
        format.json { render json: @hospitalization_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hospitalization_types/1
  # PUT /hospitalization_types/1.json
  def update
    @hospitalization_type = HospitalizationType.find(params[:id])

    respond_to do |format|
      if @hospitalization_type.update_attributes(params[:hospitalization_type])
        format.html { redirect_to hospitalization_types_path, notice: I18n.t(:record_updated) }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @hospitalization_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hospitalization_types/1
  # DELETE /hospitalization_types/1.json
  def destroy
    @hospitalization_type = HospitalizationType.find(params[:id])
    @hospitalization_type.destroy

    respond_to do |format|
      format.html { redirect_to hospitalization_types_url }
      format.json { head :ok }
    end
  end
end
