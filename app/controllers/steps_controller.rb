class StepsController < ApplicationController
  before_action :set_step, only: [:show, :edit, :update, :destroy]

  # GET /steps/new
  def new
    @step = Step.new
  end

  # POST /steps
  # POST /steps.json
  def create
    @step = Step.new(step_params)

    user = User.find( params[:user_id] )
    @step.user = user

    respond_to do |format|
      if @step.save
        format.html { redirect_to @step, notice: 'Step was successfully created.' }
        format.json { render text: 'OK', status: :created, location: @step }
      else
        format.html { render :new }
        format.json { render json: @step.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /steps/1
  # PATCH/PUT /steps/1.json
  def update
    respond_to do |format|
      if @step.update(step_params)
        format.html { redirect_to @step, notice: 'Step was successfully updated.' }
        format.json { render :show, status: :ok, location: @step }
      else
        format.html { render :edit }
        format.json { render json: @step.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /steps/1
  # DELETE /steps/1.json
  def destroy
    @step.destroy
    respond_to do |format|
      format.html { redirect_to steps_url, notice: 'Step was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_step
      @step = Step.find( params[:id] )
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def step_params
      params.require(:step).permit(:steps)
    end
end
