class KanjisController < ApplicationController
    before_action :set_kanji, only: [:show, :edit, :update, :destroy]

    # GET /kanjis
    def index
        @kanjis = Kanji.all
        @lessons = [*1..32]
    end

    # GET /kanjis/1
    def show
    end

    # GET /kanjis/new
    def new
        @kanji = Kanji.new
    end

    # GET /kanjis/1/edit
    def edit
    end

    # POST /kanjis
    def create
        @kanji = Kanji.new(kanji_params)
        cache_lesson_id = @kanji.lesson_id
        respond_to do |format|
            if @kanji.save
                format.js {
                    @kanjis = Kanji.of_book(@kanji.lesson_id)
                    @kanji = Kanji.new(lesson_id: cache_lesson_id)
                }
            else
                format.js
            end
        end
    end

    # PATCH/PUT /kanjis/1
    # PATCH/PUT /kanjis/1.json
    def update
        respond_to do |format|
            if @kanji.update(kanji_params)
                format.js {
                    @kanjis = Kanji.of_book(@kanji.lesson_id)
                    @kanji = Kanji.find(params[:id])
                }
            else
                format.js
            end
        end
    end

    # DELETE /kanjis/1
    # DELETE /kanjis/1.json
    def destroy
        @kanji.destroy
        respond_to do |format|
            format.html { redirect_to kanjis_url, notice: 'Kanji was successfully destroyed.' }
            format.json { head :no_content }
        end
    end

    def sort
        @kanjis = Kanji.of_book(params[:lesson])
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_kanji
        @kanji = Kanji.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kanji_params
        params.require(:kanji).permit(:kanji, :meaning, :onyomi, :kunyomi, :stroke_count, :hint, :image, :radical, :lesson_id)
    end
end
