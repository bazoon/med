class MedDiagnosticTestTypesController < ApplicationController
  # GET /med_diagnostic_test_types
  # GET /med_diagnostic_test_types.json
  def index
    @med_diagnostic_test_types = MedDiagnosticTestType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @med_diagnostic_test_types }
    end
  end

  # GET /med_diagnostic_test_types/1
  # GET /med_diagnostic_test_types/1.json
  def show
    @med_diagnostic_test_type = MedDiagnosticTestType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @med_diagnostic_test_type }
    end
  end

  # GET /med_diagnostic_test_types/new
  # GET /med_diagnostic_test_types/new.json
  def new
    @med_diagnostic_test_type = MedDiagnosticTestType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @med_diagnostic_test_type }
    end
  end

  # GET /med_diagnostic_test_types/1/edit
  def edit
    @med_diagnostic_test_type = MedDiagnosticTestType.find(params[:id])
  end

  # POST /med_diagnostic_test_types
  # POST /med_diagnostic_test_types.json
  def create
    @med_diagnostic_test_type = MedDiagnosticTestType.new(params[:med_diagnostic_test_type])

    respond_to do |format|
      if @med_diagnostic_test_type.save
        format.html { redirect_to med_diagnostic_test_types_path, notice: I18n.t(:record_created) }
        format.json { render json: @med_diagnostic_test_type, status: :created, location: @med_diagnostic_test_type }
      else
        format.html { render action: "new" }
        format.json { render json: @med_diagnostic_test_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /med_diagnostic_test_types/1
  # PUT /med_diagnostic_test_types/1.json
  def update
    @med_diagnostic_test_type = MedDiagnosticTestType.find(params[:id])

    respond_to do |format|
      if @med_diagnostic_test_type.update_attributes(params[:med_diagnostic_test_type])
        format.html { redirect_to med_diagnostic_test_types_path, notice:  I18n.t(:record_updated) }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @med_diagnostic_test_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /med_diagnostic_test_types/1
  # DELETE /med_diagnostic_test_types/1.json
  def destroy
    @med_diagnostic_test_type = MedDiagnosticTestType.find(params[:id])
    @med_diagnostic_test_type.destroy

    respond_to do |format|
      format.html { redirect_to med_diagnostic_test_types_url }
      format.json { head :ok }
    end
  end
end
