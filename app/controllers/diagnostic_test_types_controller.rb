class DiagnosticTestTypesController < ApplicationController
  # GET /diagnostic_test_types
  # GET /diagnostic_test_types.json
  def index
    @diagnostic_test_types = DiagnosticTestType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @diagnostic_test_types }
    end
  end

  # GET /diagnostic_test_types/1
  # GET /diagnostic_test_types/1.json
  def show
    @diagnostic_test_type = DiagnosticTestType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @diagnostic_test_type }
    end
  end

  # GET /diagnostic_test_types/new
  # GET /diagnostic_test_types/new.json
  def new
    @diagnostic_test_type = DiagnosticTestType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @diagnostic_test_type }
    end
  end

  # GET /diagnostic_test_types/1/edit
  def edit
    @diagnostic_test_type = DiagnosticTestType.find(params[:id])
  end

  # POST /diagnostic_test_types
  # POST /diagnostic_test_types.json
  def create
    @diagnostic_test_type = DiagnosticTestType.new(params[:diagnostic_test_type])

    respond_to do |format|
      if @diagnostic_test_type.save
        format.html { redirect_to diagnostic_test_types_path, notice: I18n.t(:record_created) }
        format.json { render json: @diagnostic_test_type, status: :created, location: @diagnostic_test_type }
      else
        format.html { render action: "new" }
        format.json { render json: @diagnostic_test_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /diagnostic_test_types/1
  # PUT /diagnostic_test_types/1.json
  def update
    @diagnostic_test_type = DiagnosticTestType.find(params[:id])

    respond_to do |format|
      if @diagnostic_test_type.update_attributes(params[:diagnostic_test_type])
        format.html { redirect_to diagnostic_test_types_path, notice:  I18n.t(:record_updated) }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @diagnostic_test_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diagnostic_test_types/1
  # DELETE /diagnostic_test_types/1.json
  def destroy
    @diagnostic_test_type = DiagnosticTestType.find(params[:id])
    @diagnostic_test_type.destroy

    respond_to do |format|
      format.html { redirect_to diagnostic_test_types_url }
      format.json { head :ok }
    end
  end
end
