class DoctorDeseasesController < ApplicationController
  # GET /doctor_deseases
  # GET /doctor_deseases.json
  def index
    @doctor_deseases = DoctorDesease.page(params[:page]).per(10)



    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @doctor_deseases }
    end
  end

  # GET /doctor_deseases/1
  # GET /doctor_deseases/1.json
  def show
    @doctor_desease = DoctorDesease.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @doctor_desease }
    end
  end

  # GET /doctor_deseases/new
  # GET /doctor_deseases/new.json
  def new
    @doctor_desease = DoctorDesease.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @doctor_desease }
    end
  end

  # GET /doctor_deseases/1/edit
  def edit
    @doctor_desease = DoctorDesease.find(params[:id])
  end

  # POST /doctor_deseases
  # POST /doctor_deseases.json
  def create
    @doctor_desease = DoctorDesease.new(params[:doctor_desease])

    respond_to do |format|
      if @doctor_desease.save
        format.html { redirect_to doctor_deseases_path, notice: I18n.t(:record_created) }
        format.json { render json: @doctor_desease, status: :created, location: @doctor_desease }
      else
        format.html { render action: "new" }
        format.json { render json: @doctor_desease.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /doctor_deseases/1
  # PUT /doctor_deseases/1.json
  def update
    @doctor_desease = DoctorDesease.find(params[:id])

    respond_to do |format|
      if @doctor_desease.update_attributes(params[:doctor_desease])
        format.html { redirect_to doctor_deseases_path,  notice: I18n.t(:record_updated)}
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @doctor_desease.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doctor_deseases/1
  # DELETE /doctor_deseases/1.json
  def destroy
    @doctor_desease = DoctorDesease.find(params[:id])
    @doctor_desease.destroy

    respond_to do |format|
      format.html { redirect_to doctor_deseases_url }
      format.json { head :ok }
    end
  end
end
