require 'rails_helper'
include RandomData

RSpec.describe TopicsController, type: :controller do
  let(:my_topic) { Topic.create!(name: RandomData.random_sentence, description: RandomData.random_paragrap) }

  describe "GET index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_success(:success)
    end

    it "assigns my_topic to @topics" do
      get :index
      expect(assigns(:topics)).to eq([my_topic])
    end
  end
end
