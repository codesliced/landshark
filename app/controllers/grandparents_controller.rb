class GrandparentsController < ApplicationController
  # GET /grandparents
  # GET /grandparents.json
  def index
    @grandparents = Grandparent.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @grandparents }
    end
  end

  # GET /grandparents/1
  # GET /grandparents/1.json
  def show
    @grandparent = Grandparent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @grandparent }
    end
  end

  # GET /grandparents/new
  # GET /grandparents/new.json
  def new
    @grandparent = Grandparent.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @grandparent }
    end
  end

  # GET /grandparents/1/edit
  def edit
    @grandparent = Grandparent.find(params[:id])
  end

  # POST /grandparents
  # POST /grandparents.json
  def create
    @grandparent = Grandparent.new(params[:grandparent])

    respond_to do |format|
      if @grandparent.save
        format.html { redirect_to @grandparent, notice: 'Grandparent was successfully created.' }
        format.json { render json: @grandparent, status: :created, location: @grandparent }
      else
        format.html { render action: "new" }
        format.json { render json: @grandparent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /grandparents/1
  # PUT /grandparents/1.json
  def update
    @grandparent = Grandparent.find(params[:id])

    respond_to do |format|
      if @grandparent.update_attributes(params[:grandparent])
        format.html { redirect_to @grandparent, notice: 'Grandparent was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @grandparent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grandparents/1
  # DELETE /grandparents/1.json
  def destroy
    @grandparent = Grandparent.find(params[:id])
    @grandparent.destroy

    respond_to do |format|
      format.html { redirect_to grandparents_url }
      format.json { head :no_content }
    end
  end
end
