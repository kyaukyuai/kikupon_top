require "spec_helper"

describe TakamacchosController do
  describe "routing" do

    it "routes to #index" do
      get("/takamacchos").should route_to("takamacchos#index")
    end

    it "routes to #new" do
      get("/takamacchos/new").should route_to("takamacchos#new")
    end

    it "routes to #show" do
      get("/takamacchos/1").should route_to("takamacchos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/takamacchos/1/edit").should route_to("takamacchos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/takamacchos").should route_to("takamacchos#create")
    end

    it "routes to #update" do
      put("/takamacchos/1").should route_to("takamacchos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/takamacchos/1").should route_to("takamacchos#destroy", :id => "1")
    end

  end
end
