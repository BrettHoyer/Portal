class RantsController < ApplicationController
  # GET /rants
  # GET /rants.json
  def index
    @rants = Rant.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rants }
    end
  end

  # GET /rants/1
  # GET /rants/1.json
  def show
    @rant = Rant.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rant }
    end
  end

  # GET /rants/new
  # GET /rants/new.json
  def new
    @rant = Rant.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rant }
    end
  end

  # GET /rants/1/edit
  def edit
    @rant = Rant.find(params[:id])
  end

  # POST /rants
  # POST /rants.json
  def create
    @rant = Rant.new(params[:rant])

    respond_to do |format|
      if @rant.save
        format.html { redirect_to @rant, notice: 'Rant was successfully created.' }
        format.json { render json: @rant, status: :created, location: @rant }
      else
        format.html { render action: "new" }
        format.json { render json: @rant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rants/1
  # PUT /rants/1.json
  def update
    @rant = Rant.find(params[:id])

    respond_to do |format|
      if @rant.update_attributes(params[:rant])
        format.html { redirect_to @rant, notice: 'Rant was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @rant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rants/1
  # DELETE /rants/1.json
  def destroy
    @rant = Rant.find(params[:id])
    @rant.destroy

    respond_to do |format|
      format.html { redirect_to rants_url }
      format.json { head :no_content }
    end
  end
end
