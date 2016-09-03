class NewWord::VerbFormsController < ApplicationController
  before_action :set_new_word_verb_form, only: [:show, :edit, :update, :destroy]

  # GET /new_word/verb_forms
  # GET /new_word/verb_forms.json
  def index
    @new_word_verb_forms = NewWord::VerbForm.all
  end

  # GET /new_word/verb_forms/1
  # GET /new_word/verb_forms/1.json
  def show
  end

  # GET /new_word/verb_forms/new
  def new
    @new_word_verb_form = NewWord::VerbForm.new
  end

  # GET /new_word/verb_forms/1/edit
  def edit
  end

  # POST /new_word/verb_forms
  # POST /new_word/verb_forms.json
  def create
    @new_word_verb_form = NewWord::VerbForm.new(new_word_verb_form_params)

    respond_to do |format|
      if @new_word_verb_form.save
        format.html { redirect_to @new_word_verb_form, notice: 'Verb form was successfully created.' }
        format.json { render :show, status: :created, location: @new_word_verb_form }
      else
        format.html { render :new }
        format.json { render json: @new_word_verb_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /new_word/verb_forms/1
  # PATCH/PUT /new_word/verb_forms/1.json
  def update
    respond_to do |format|
      if @new_word_verb_form.update(new_word_verb_form_params)
        format.html { redirect_to @new_word_verb_form, notice: 'Verb form was successfully updated.' }
        format.json { render :show, status: :ok, location: @new_word_verb_form }
      else
        format.html { render :edit }
        format.json { render json: @new_word_verb_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /new_word/verb_forms/1
  # DELETE /new_word/verb_forms/1.json
  def destroy
    @new_word_verb_form.destroy
    respond_to do |format|
      format.html { redirect_to new_word_verb_forms_url, notice: 'Verb form was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_new_word_verb_form
      @new_word_verb_form = NewWord::VerbForm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def new_word_verb_form_params
      params.require(:new_word_verb_form).permit(:verb_type, :dictionary_form, :nai_form, :te_form)
    end
end
