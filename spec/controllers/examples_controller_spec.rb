require 'rails_helper'


RSpec.describe ExamplesController, type: :controller do

    let(:valid_attributes) {
        skip("Add a hash of attributes valid for your model")
    }

    let(:invalid_attributes) {
        skip("Add a hash of attributes invalid for your model")
    }

    # This should return the minimal set of values that should be in the session
    # in order to pass any filters (e.g. authentication) defined in
    # ExamplesController. Be sure to keep this updated too.
    let(:valid_session) { {} }

    describe "GET #index" do
        it "assigns all examples as @examples" do
            example = Example.create! valid_attributes
            get :index, params: {}, session: valid_session
            expect(assigns(:examples)).to eq([example])
        end
    end

    describe "GET #show" do
        it "assigns the requested example as @example" do
            example = Example.create! valid_attributes
            get :show, params: {id: example.to_param}, session: valid_session
            expect(assigns(:example)).to eq(example)
        end
    end

    describe "GET #new" do
        it "assigns a new example as @example" do
            get :new, params: {}, session: valid_session
            expect(assigns(:example)).to be_a_new(Example)
        end
    end

    describe "GET #edit" do
        it "assigns the requested example as @example" do
            example = Example.create! valid_attributes
            get :edit, params: {id: example.to_param}, session: valid_session
            expect(assigns(:example)).to eq(example)
        end
    end

    describe "POST #create" do
        context "with valid params" do
            it "creates a new Example" do
                expect {
                    post :create, params: {example: valid_attributes}, session: valid_session
                }.to change(Example, :count).by(1)
            end

            it "assigns a newly created example as @example" do
                post :create, params: {example: valid_attributes}, session: valid_session
                expect(assigns(:example)).to be_a(Example)
                expect(assigns(:example)).to be_persisted
            end

            it "redirects to the created example" do
                post :create, params: {example: valid_attributes}, session: valid_session
                expect(response).to redirect_to(Example.last)
            end
        end

        context "with invalid params" do
            it "assigns a newly created but unsaved example as @example" do
                post :create, params: {example: invalid_attributes}, session: valid_session
                expect(assigns(:example)).to be_a_new(Example)
            end

            it "re-renders the 'new' template" do
                post :create, params: {example: invalid_attributes}, session: valid_session
                expect(response).to render_template("new")
            end
        end
    end

    describe "PUT #update" do
        context "with valid params" do
            let(:new_attributes) {
                skip("Add a hash of attributes valid for your model")
            }

            it "updates the requested example" do
                example = Example.create! valid_attributes
                put :update, params: {id: example.to_param, example: new_attributes}, session: valid_session
                example.reload
                skip("Add assertions for updated state")
            end

            it "assigns the requested example as @example" do
                example = Example.create! valid_attributes
                put :update, params: {id: example.to_param, example: valid_attributes}, session: valid_session
                expect(assigns(:example)).to eq(example)
            end

            it "redirects to the example" do
                example = Example.create! valid_attributes
                put :update, params: {id: example.to_param, example: valid_attributes}, session: valid_session
                expect(response).to redirect_to(example)
            end
        end

        context "with invalid params" do
            it "assigns the example as @example" do
                example = Example.create! valid_attributes
                put :update, params: {id: example.to_param, example: invalid_attributes}, session: valid_session
                expect(assigns(:example)).to eq(example)
            end

            it "re-renders the 'edit' template" do
                example = Example.create! valid_attributes
                put :update, params: {id: example.to_param, example: invalid_attributes}, session: valid_session
                expect(response).to render_template("edit")
            end
        end
    end

    describe "DELETE #destroy" do
        it "destroys the requested example" do
            example = Example.create! valid_attributes
            expect {
                delete :destroy, params: {id: example.to_param}, session: valid_session
            }.to change(Example, :count).by(-1)
        end

        it "redirects to the examples list" do
            example = Example.create! valid_attributes
            delete :destroy, params: {id: example.to_param}, session: valid_session
            expect(response).to redirect_to(examples_url)
        end
    end

end
