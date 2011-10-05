class DeseaseTypesController < ApplicationController
  # GET /desease_types
  # GET /desease_types.json
  def index
    @desease_types = DeseaseType.order('name').page(params[:page]).per(10)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @desease_types }
    end
  end

  # GET /desease_types/1
  # GET /desease_types/1.json
  def show
    @desease_type = DeseaseType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @desease_type }
    end
  end

  # GET /desease_types/new
  # GET /desease_types/new.json
  def new
    @desease_type = DeseaseType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @desease_type }
    end
  end

  # GET /desease_types/1/edit
  def edit
    @desease_type = DeseaseType.find(params[:id])
  end

  # POST /desease_types
  # POST /desease_types.json
  def create
    @desease_type = DeseaseType.new(params[:desease_type])

    respond_to do |format|
      if @desease_type.save
        format.html { redirect_to desease_types_path, notice: I18n.t(:record_created)  }
        format.json { render json: @desease_type, status: :created, location: @desease_type }
      else
        format.html { render action: "new" }
        format.json { render json: @desease_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /desease_types/1
  # PUT /desease_types/1.json
  def update
    @desease_type = DeseaseType.find(params[:id])

    respond_to do |format|
      if @desease_type.update_attributes(params[:desease_type])
        format.html { redirect_to desease_types_path, notice: I18n.t(:record_updated)  }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @desease_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /desease_types/1
  # DELETE /desease_types/1.json
  def destroy
    @desease_type = DeseaseType.find(params[:id])
    @desease_type.destroy

    respond_to do |format|
      format.html { redirect_to desease_types_url }
      format.json { head :ok }
    end
  end
end
