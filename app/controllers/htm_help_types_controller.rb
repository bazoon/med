class HtmHelpTypesController < ApplicationController
  # GET /htm_help_types
  # GET /htm_help_types.json
  def index
    @htm_help_types = HtmHelpType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @htm_help_types }
    end
  end

  # GET /htm_help_types/1
  # GET /htm_help_types/1.json
  def show
    @htm_help_type = HtmHelpType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @htm_help_type }
    end
  end

  # GET /htm_help_types/new
  # GET /htm_help_types/new.json
  def new
    @htm_help_type = HtmHelpType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @htm_help_type }
    end
  end

  # GET /htm_help_types/1/edit
  def edit
    @htm_help_type = HtmHelpType.find(params[:id])
  end

  # POST /htm_help_types
  # POST /htm_help_types.json
  def create
    @htm_help_type = HtmHelpType.new(params[:htm_help_type])

    respond_to do |format|
      if @htm_help_type.save
        format.html { redirect_to htm_help_types_path, notice: I18n.t(:record_created) }
        format.json { render json: @htm_help_type, status: :created, location: @htm_help_type }
      else
        format.html { render action: "new" }
        format.json { render json: @htm_help_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /htm_help_types/1
  # PUT /htm_help_types/1.json
  def update
    @htm_help_type = HtmHelpType.find(params[:id])

    respond_to do |format|
      if @htm_help_type.update_attributes(params[:htm_help_type])
        format.html { redirect_to htm_help_types_path, notice: I18n.t(:record_updated) }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @htm_help_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /htm_help_types/1
  # DELETE /htm_help_types/1.json
  def destroy
    @htm_help_type = HtmHelpType.find(params[:id])
    @htm_help_type.destroy

    respond_to do |format|
      format.html { redirect_to htm_help_types_url }
      format.json { head :ok }
    end
  end
end
