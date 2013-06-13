require "spec_helper"

describe GrandparentsController do
  describe "routing" do

    it "routes to #index" do
      get("/grandparents").should route_to("grandparents#index")
    end

    it "routes to #new" do
      get("/grandparents/new").should route_to("grandparents#new")
    end

    it "routes to #show" do
      get("/grandparents/1").should route_to("grandparents#show", :id => "1")
    end

    it "routes to #edit" do
      get("/grandparents/1/edit").should route_to("grandparents#edit", :id => "1")
    end

    it "routes to #create" do
      post("/grandparents").should route_to("grandparents#create")
    end

    it "routes to #update" do
      put("/grandparents/1").should route_to("grandparents#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/grandparents/1").should route_to("grandparents#destroy", :id => "1")
    end

  end
end
