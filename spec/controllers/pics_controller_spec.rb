require 'rails_helper'

RSpec.describe PicsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Pic. As you add validations to Pic, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # PicsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "returns a success response" do
      Pic.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      pic = Pic.create! valid_attributes
      get :show, params: { id: pic.to_param }, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #new" do
    it "returns a success response" do
      get :new, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #edit" do
    it "returns a success response" do
      pic = Pic.create! valid_attributes
      get :edit, params: { id: pic.to_param }, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Pic" do
        expect {
          post :create, params: { pic: valid_attributes }, session: valid_session
        }.to change(Pic, :count).by(1)
      end

      it "redirects to the created pic" do
        post :create, params: { pic: valid_attributes }, session: valid_session
        expect(response).to redirect_to(Pic.last)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: { pic: invalid_attributes }, session: valid_session
        expect(response).to be_successful
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested pic" do
        pic = Pic.create! valid_attributes
        put :update, params: { id: pic.to_param, pic: new_attributes }, session: valid_session
        pic.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the pic" do
        pic = Pic.create! valid_attributes
        put :update, params: { id: pic.to_param, pic: valid_attributes }, session: valid_session
        expect(response).to redirect_to(pic)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'edit' template)" do
        pic = Pic.create! valid_attributes
        put :update, params: { id: pic.to_param, pic: invalid_attributes }, session: valid_session
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested pic" do
      pic = Pic.create! valid_attributes
      expect {
        delete :destroy, params: { id: pic.to_param }, session: valid_session
      }.to change(Pic, :count).by(-1)
    end

    it "redirects to the pics list" do
      pic = Pic.create! valid_attributes
      delete :destroy, params: { id: pic.to_param }, session: valid_session
      expect(response).to redirect_to(pics_url)
    end
  end

end
