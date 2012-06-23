class UbicacionsController < ApplicationController
  # GET /ubicacions
  # GET /ubicacions.json
  def index
    @ubicacions = Ubicacion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ubicacions }
    end
  end

  # GET /ubicacions/1
  # GET /ubicacions/1.json
  def show
    @ubicacion = Ubicacion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ubicacion }
    end
  end

  # GET /ubicacions/new
  # GET /ubicacions/new.json
  def new
    @ubicacion = Ubicacion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ubicacion }
    end
  end

  # GET /ubicacions/1/edit
  def edit
    @ubicacion = Ubicacion.find(params[:id])
  end

  # POST /ubicacions
  # POST /ubicacions.json
  def create
    @ubicacion = Ubicacion.new(params[:ubicacion])

    respond_to do |format|
      if @ubicacion.save
        format.html { redirect_to @ubicacion, notice: 'Ubicacion was successfully created.' }
        format.json { render json: @ubicacion, status: :created, location: @ubicacion }
      else
        format.html { render action: "new" }
        format.json { render json: @ubicacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ubicacions/1
  # PUT /ubicacions/1.json
  def update
    @ubicacion = Ubicacion.find(params[:id])

    respond_to do |format|
      if @ubicacion.update_attributes(params[:ubicacion])
        format.html { redirect_to @ubicacion, notice: 'Ubicacion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ubicacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ubicacions/1
  # DELETE /ubicacions/1.json
  def destroy
    @ubicacion = Ubicacion.find(params[:id])
    @ubicacion.destroy

    respond_to do |format|
      format.html { redirect_to ubicacions_url }
      format.json { head :no_content }
    end
  end
end
