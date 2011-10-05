class LabTestTypesController < ApplicationController
  # GET /lab_test_types
  # GET /lab_test_types.json
  def index
    @lab_test_types = LabTestType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @lab_test_types }
    end
  end

  # GET /lab_test_types/1
  # GET /lab_test_types/1.json
  def show
    @lab_test_type = LabTestType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @lab_test_type }
    end
  end

  # GET /lab_test_types/new
  # GET /lab_test_types/new.json
  def new
    @lab_test_type = LabTestType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @lab_test_type }
    end
  end

  # GET /lab_test_types/1/edit
  def edit
    @lab_test_type = LabTestType.find(params[:id])
  end

  # POST /lab_test_types
  # POST /lab_test_types.json
  def create
    @lab_test_type = LabTestType.new(params[:lab_test_type])

    respond_to do |format|
      if @lab_test_type.save
        format.html { redirect_to lab_test_types_path, notice: 'Lab test type was successfully created.' }
        format.json { render json: @lab_test_type, status: :created, location: @lab_test_type }
      else
        format.html { render action: "new" }
        format.json { render json: @lab_test_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /lab_test_types/1
  # PUT /lab_test_types/1.json
  def update
    @lab_test_type = LabTestType.find(params[:id])

    respond_to do |format|
      if @lab_test_type.update_attributes(params[:lab_test_type])
        format.html { redirect_to lab_test_types_path, notice: 'Lab test type was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @lab_test_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lab_test_types/1
  # DELETE /lab_test_types/1.json
  def destroy
    @lab_test_type = LabTestType.find(params[:id])
    @lab_test_type.destroy

    respond_to do |format|
      format.html { redirect_to lab_test_types_url }
      format.json { head :ok }
    end
  end
end
