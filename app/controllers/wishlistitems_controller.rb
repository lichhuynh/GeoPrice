class WishlistitemsController < ApplicationController
  # GET /wishlistitems
  # GET /wishlistitems.json
  def index
    @wishlistitems = Wishlistitem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @wishlistitems }
    end
  end

  # GET /wishlistitems/1
  # GET /wishlistitems/1.json
  def show
    @wishlistitem = Wishlistitem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @wishlistitem }
    end
  end

  # GET /wishlistitems/new
  # GET /wishlistitems/new.json
  def new
    @wishlistitem = Wishlistitem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @wishlistitem }
    end
  end

  # GET /wishlistitems/1/edit
  def edit
    @wishlistitem = Wishlistitem.find(params[:id])
  end

  # POST /wishlistitems
  # POST /wishlistitems.json
  def create
    @wishlistitem = Wishlistitem.new(params[:wishlistitem])

    respond_to do |format|
      if @wishlistitem.save
        format.html { redirect_to @wishlistitem, notice: 'Wishlistitem was successfully created.' }
        format.json { render json: @wishlistitem, status: :created, location: @wishlistitem }
      else
        format.html { render action: "new" }
        format.json { render json: @wishlistitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /wishlistitems/1
  # PUT /wishlistitems/1.json
  def update
    @wishlistitem = Wishlistitem.find(params[:id])

    respond_to do |format|
      if @wishlistitem.update_attributes(params[:wishlistitem])
        format.html { redirect_to @wishlistitem, notice: 'Wishlistitem was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @wishlistitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wishlistitems/1
  # DELETE /wishlistitems/1.json
  def destroy
    @wishlistitem = Wishlistitem.find(params[:id])
    @wishlistitem.destroy

    respond_to do |format|
      format.html { redirect_to wishlistitems_url }
      format.json { head :no_content }
    end
  end
end
