class BangdiemhocsinhsController < ApplicationController
  before_action :set_bangdiemhocsinh, only: [:show, :edit, :update, :destroy]

  # GET /bangdiemhocsinhs
  # GET /bangdiemhocsinhs.json
  def index
    @bangdiemhocsinhs = Bangdiemhocsinh.all
  end

  # GET /bangdiemhocsinhs/1
  # GET /bangdiemhocsinhs/1.json
  def show
  end

  # GET /bangdiemhocsinhs/new
  def new
    @bangdiemhocsinh = Bangdiemhocsinh.new
  end

  # GET /bangdiemhocsinhs/1/edit
  def edit
  end

  # POST /bangdiemhocsinhs
  # POST /bangdiemhocsinhs.json
  def create
    @bangdiemhocsinh = Bangdiemhocsinh.new(bangdiemhocsinh_params)

    respond_to do |format|
      if @bangdiemhocsinh.save
        format.html { redirect_to @bangdiemhocsinh, notice: 'Bangdiemhocsinh was successfully created.' }
        format.json { render :show, status: :created, location: @bangdiemhocsinh }
      else
        format.html { render :new }
        format.json { render json: @bangdiemhocsinh.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bangdiemhocsinhs/1
  # PATCH/PUT /bangdiemhocsinhs/1.json
  def update
    respond_to do |format|
      if @bangdiemhocsinh.update(bangdiemhocsinh_params)
        format.html { redirect_to @bangdiemhocsinh, notice: 'Bangdiemhocsinh was successfully updated.' }
        format.json { render :show, status: :ok, location: @bangdiemhocsinh }
      else
        format.html { render :edit }
        format.json { render json: @bangdiemhocsinh.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bangdiemhocsinhs/1
  # DELETE /bangdiemhocsinhs/1.json
  def destroy
    @bangdiemhocsinh.destroy
    respond_to do |format|
      format.html { redirect_to bangdiemhocsinhs_url, notice: 'Bangdiemhocsinh was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bangdiemhocsinh
      @bangdiemhocsinh = Bangdiemhocsinh.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bangdiemhocsinh_params
      params.require(:bangdiemhocsinh).permit(:Name, :Date, :Lop, :Sumary)
    end
end
