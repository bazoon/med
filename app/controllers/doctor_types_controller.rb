class DoctorTypesController < ApplicationController
  # GET /doctor_types
  # GET /doctor_types.json
  def index
    @doctor_types = DoctorType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @doctor_types }
    end
  end

  # GET /doctor_types/1
  # GET /doctor_types/1.json
  def show
    @doctor_type = DoctorType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @doctor_type }
    end
  end

  # GET /doctor_types/new
  # GET /doctor_types/new.json
  def new
    @doctor_type = DoctorType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @doctor_type }
    end
  end

  # GET /doctor_types/1/edit
  def edit
    @doctor_type = DoctorType.find(params[:id])
  end

  # POST /doctor_types
  # POST /doctor_types.json
  def create
    @doctor_type = DoctorType.new(params[:doctor_type])

    respond_to do |format|
      if @doctor_type.save
        format.html { redirect_to doctor_types_path, notice: I18n.t(:record_created)  }
        format.json { render json: @doctor_type, status: :created, location: @doctor_type }
      else
        format.html { render action: "new" }
        format.json { render json: @doctor_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /doctor_types/1
  # PUT /doctor_types/1.json
  def update
    @doctor_type = DoctorType.find(params[:id])

    respond_to do |format|
      if @doctor_type.update_attributes(params[:doctor_type])
        format.html { redirect_to doctor_types_path, notice: I18n.t(:record_updated) }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @doctor_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doctor_types/1
  # DELETE /doctor_types/1.json
  def destroy
    @doctor_type = DoctorType.find(params[:id])
    @doctor_type.destroy

    respond_to do |format|
      format.html { redirect_to doctor_types_url }
      format.json { head :ok }
    end
  end
end
