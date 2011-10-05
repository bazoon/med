class InsCompaniesController < ApplicationController
  # GET /ins_companies
  # GET /ins_companies.json
  def index
    @ins_companies = InsCompany.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ins_companies }
    end
  end

  # GET /ins_companies/1
  # GET /ins_companies/1.json
  def show
    @ins_company = InsCompany.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ins_company }
    end
  end

  # GET /ins_companies/new
  # GET /ins_companies/new.json
  def new
    @ins_company = InsCompany.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ins_company }
    end
  end

  # GET /ins_companies/1/edit
  def edit
    @ins_company = InsCompany.find(params[:id])
  end

  # POST /ins_companies
  # POST /ins_companies.json
  def create
    @ins_company = InsCompany.new(params[:ins_company])

    respond_to do |format|
      if @ins_company.save
        format.html { redirect_to @ins_company, notice: 'Ins company was successfully created.' }
        format.json { render json: @ins_company, status: :created, location: @ins_company }
      else
        format.html { render action: "new" }
        format.json { render json: @ins_company.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ins_companies/1
  # PUT /ins_companies/1.json
  def update
    @ins_company = InsCompany.find(params[:id])

    respond_to do |format|
      if @ins_company.update_attributes(params[:ins_company])
        format.html { redirect_to @ins_company, notice: 'Ins company was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @ins_company.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ins_companies/1
  # DELETE /ins_companies/1.json
  def destroy
    @ins_company = InsCompany.find(params[:id])
    @ins_company.destroy

    respond_to do |format|
      format.html { redirect_to ins_companies_url }
      format.json { head :ok }
    end
  end
end
