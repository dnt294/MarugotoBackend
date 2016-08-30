class VerbFormsController < ApplicationController
  before_action :set_verb_form, only: [:show, :edit, :update, :destroy]

  # GET /verb_forms
  # GET /verb_forms.json
  def index
    @verb_forms = VerbForm.all
  end

  # GET /verb_forms/1
  # GET /verb_forms/1.json
  def show
  end

  # GET /verb_forms/new
  def new
    @verb_form = VerbForm.new
  end

  # GET /verb_forms/1/edit
  def edit
  end

  # POST /verb_forms
  # POST /verb_forms.json
  def create
    @verb_form = VerbForm.new(verb_form_params)

    respond_to do |format|
      if @verb_form.save
        format.html { redirect_to @verb_form, notice: 'Verb form was successfully created.' }
        format.json { render :show, status: :created, location: @verb_form }
      else
        format.html { render :new }
        format.json { render json: @verb_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /verb_forms/1
  # PATCH/PUT /verb_forms/1.json
  def update
    respond_to do |format|
      if @verb_form.update(verb_form_params)
        format.html { redirect_to @verb_form, notice: 'Verb form was successfully updated.' }
        format.json { render :show, status: :ok, location: @verb_form }
      else
        format.html { render :edit }
        format.json { render json: @verb_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /verb_forms/1
  # DELETE /verb_forms/1.json
  def destroy
    @verb_form.destroy
    respond_to do |format|
      format.html { redirect_to verb_forms_url, notice: 'Verb form was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_verb_form
      @verb_form = VerbForm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def verb_form_params
      params.require(:verb_form).permit(:dictionary_form, :nai_form, :te_form)
    end
end
