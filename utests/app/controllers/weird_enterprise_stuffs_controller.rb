class WeirdEnterpriseStuffsController < ApplicationController
  before_action :set_weird_enterprise_stuff, only: [:show, :edit, :update, :destroy]

  # GET /weird_enterprise_stuffs
  # GET /weird_enterprise_stuffs.json
  def index
    @weird_enterprise_stuffs = WeirdEnterpriseStuff.all
  end

  # GET /weird_enterprise_stuffs/1
  # GET /weird_enterprise_stuffs/1.json
  def show
  end

  # GET /weird_enterprise_stuffs/new
  def new
    @weird_enterprise_stuff = WeirdEnterpriseStuff.new
  end

  # GET /weird_enterprise_stuffs/1/edit
  def edit
  end

  # POST /weird_enterprise_stuffs
  # POST /weird_enterprise_stuffs.json
  def create
    @weird_enterprise_stuff = WeirdEnterpriseStuff.new(weird_enterprise_stuff_params)

    respond_to do |format|
      if @weird_enterprise_stuff.save
        format.html { redirect_to @weird_enterprise_stuff, notice: 'Weird enterprise stuff was successfully created.' }
        format.json { render :show, status: :created, location: @weird_enterprise_stuff }
      else
        format.html { render :new }
        format.json { render json: @weird_enterprise_stuff.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /weird_enterprise_stuffs/1
  # PATCH/PUT /weird_enterprise_stuffs/1.json
  def update
    respond_to do |format|
      if @weird_enterprise_stuff.update(weird_enterprise_stuff_params)
        format.html { redirect_to @weird_enterprise_stuff, notice: 'Weird enterprise stuff was successfully updated.' }
        format.json { render :show, status: :ok, location: @weird_enterprise_stuff }
      else
        format.html { render :edit }
        format.json { render json: @weird_enterprise_stuff.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weird_enterprise_stuffs/1
  # DELETE /weird_enterprise_stuffs/1.json
  def destroy
    @weird_enterprise_stuff.destroy
    respond_to do |format|
      format.html { redirect_to weird_enterprise_stuffs_url, notice: 'Weird enterprise stuff was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weird_enterprise_stuff
      @weird_enterprise_stuff = WeirdEnterpriseStuff.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def weird_enterprise_stuff_params
      params.require(:weird_enterprise_stuff).permit(:priority)
    end
end
