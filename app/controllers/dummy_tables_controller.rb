class DummyTablesController < ApplicationController
  # GET /dummy_tables
  # GET /dummy_tables.json
  def index
    @dummy_tables = DummyTable.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dummy_tables }
    end
  end

  # GET /dummy_tables/1
  # GET /dummy_tables/1.json
  def show
    @dummy_table = DummyTable.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dummy_table }
    end
  end

  # GET /dummy_tables/new
  # GET /dummy_tables/new.json
  def new
    @dummy_table = DummyTable.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dummy_table }
    end
  end

  # GET /dummy_tables/1/edit
  def edit
    @dummy_table = DummyTable.find(params[:id])
  end

  # POST /dummy_tables
  # POST /dummy_tables.json
  def create
    @dummy_table = DummyTable.new(params[:dummy_table])

    respond_to do |format|
      if @dummy_table.save
        format.html { redirect_to @dummy_table, notice: 'Dummy table was successfully created.' }
        format.json { render json: @dummy_table, status: :created, location: @dummy_table }
      else
        format.html { render action: "new" }
        format.json { render json: @dummy_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dummy_tables/1
  # PUT /dummy_tables/1.json
  def update
    @dummy_table = DummyTable.find(params[:id])

    respond_to do |format|
      if @dummy_table.update_attributes(params[:dummy_table])
        format.html { redirect_to @dummy_table, notice: 'Dummy table was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @dummy_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dummy_tables/1
  # DELETE /dummy_tables/1.json
  def destroy
    @dummy_table = DummyTable.find(params[:id])
    @dummy_table.destroy

    respond_to do |format|
      format.html { redirect_to dummy_tables_url }
      format.json { head :no_content }
    end
  end
end
