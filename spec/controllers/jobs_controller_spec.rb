require 'rails_helper'

RSpec.describe JobsController, type: :controller do

  # index

  describe "GET #index" do
    let(:job) { FactoryGirl.create(:job)}
    before do
      get :index
    end

    context "when sending index#get" do
      it {is_expected.to respond_with 200}
      it {is_expected.to render_template("index")}
    end
  end

  # show

  describe "GET #show" do
    let(:job) { FactoryGirl.create(:job)}
    before do
      get :show, id: job.id
    end

    context "when sending show#get request" do
      it { is_expected.to respond_with 200 }
    end
  end

  # new

  describe "GET #new" do
    before do
      get :new
    end

    context "when sending new#get request" do
      it { is_expected.to respond_with 200}
      it { is_expected.to render_template("new")}
    end
  end

  # create

  describe "POST #create" do
    let(:job) { FactoryGirl.create(:job)}
    it "will have a name" do
      expect(job.title).to_not eq(nil)
    end

    it "will be valid" do
      expect(job).to be_valid
    end

    it "creates a job" do
      expect do
        post :create, {job: {title: "baa"}}
      end.to change{Job.count}.by(1)
    end

  end

  # edit

  describe "GET #edit" do
    let(:job) { FactoryGirl.create(:job)}
    before do
      get :edit, id: job.id
    end

    it "gets edit" do
      assert_response :success
    end

    it "returns http success" do
      expect(response.status).to eq(200)
    end

    it "renders the edit template" do
      expect(response).to render_template("edit")
    end
  end

  # update

  describe "PATCH #update" do
    let(:job) { FactoryGirl.create(:job)}
    before do
      patch :update, id: job.id, job: {title: "baba"}
    end

    it "redirects after update" do
      assert_response :redirect
    end

    it "returns http success" do
      expect(response.status).to eq(302)
    end
  end

end
