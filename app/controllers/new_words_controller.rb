class NewWordsController < ApplicationController
  before_action :set_new_word, only: [:show, :edit, :update, :destroy]

  # GET /new_words
  # GET /new_words.json
  def index
    @new_words = NewWord.all
  end

  # GET /new_words/1
  # GET /new_words/1.json
  def show
  end

  # GET /new_words/new
  def new
    @new_word = NewWord.new
  end

  # GET /new_words/1/edit
  def edit
  end

  # POST /new_words
  # POST /new_words.json
  def create
    @new_word = NewWord.new(new_word_params)

    respond_to do |format|
      if @new_word.save
        format.html { redirect_to @new_word, notice: 'New word was successfully created.' }
        format.json { render :show, status: :created, location: @new_word }
      else
        format.html { render :new }
        format.json { render json: @new_word.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /new_words/1
  # PATCH/PUT /new_words/1.json
  def update
    respond_to do |format|
      if @new_word.update(new_word_params)
        format.html { redirect_to @new_word, notice: 'New word was successfully updated.' }
        format.json { render :show, status: :ok, location: @new_word }
      else
        format.html { render :edit }
        format.json { render json: @new_word.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /new_words/1
  # DELETE /new_words/1.json
  def destroy
    @new_word.destroy
    respond_to do |format|
      format.html { redirect_to new_words_url, notice: 'New word was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_new_word
      @new_word = NewWord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def new_word_params
      params.require(:new_word).permit(:word, :kanji_version, :meaning, :note, :lesson)
    end
end
