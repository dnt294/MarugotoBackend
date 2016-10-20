class KanjiComponentsController < ApplicationController

    def create
        @kanji_component = KanjiComponent.new(kanji_components_params)
        @kanji_component.save

        kanji = Kanji.find(params[:kanji_component][:reference_id])
        redirect_to kanji

    end

    def destroy
        @kanji_component = KanjiComponent.find(params[:id])
        kanji = Kanji.find(@kanji_component.reference_id)

        @kanji_component.destroy

        redirect_to kanji
    end

    private

    def kanji_components_params
        params.require(:kanji_component).permit(:component_id, :reference_id)
    end
end
