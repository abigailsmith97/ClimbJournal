RSpec.describe LogOutdoorClimbsController, type: :controller do
    let(:user) { create(:user) } # Assuming you have a User model and a factory for it
  
    describe "GET #index" do
      it "assigns @log_climbs and orders them by date in descending order" do
        log_climbs = create_list(:outdoor_climbing, 3, user: user)
        get :index
        expect(assigns(:log_climbs)).to eq(log_climbs.reverse)
      end
    end
  
    describe "GET #edit" do
      it "assigns the requested log_climb as @log_climb" do
        log_climb = create(:outdoor_climbing, user: user)
        get :edit, params: { id: log_climb.id }
        expect(assigns(:log_climb)).to eq(log_climb)
      end
    end
  
    describe "PUT #update" do
      context "with valid params" do
        it "updates the requested log_climb" do
          log_climb = create(:outdoor_climbing, user: user)
          put :update, params: { id: log_climb.id, outdoor_climbing: { location: "New Location" } }
          log_climb.reload
          expect(log_climb.location).to eq("New Location")
        end
  
        it "redirects to the log_outdoor_climbs index" do
          log_climb = create(:outdoor_climbing, user: user)
          put :update, params: { id: log_climb.id, outdoor_climbing: { location: "New Location" } }
          expect(response).to redirect_to(log_outdoor_climbs_path)
        end
      end
  
      context "with invalid params" do
        it "renders the edit template" do
          log_climb = create(:outdoor_climbing, user: user)
          put :update, params: { id: log_climb.id, outdoor_climbing: { location: "" } }
          expect(response).to render_template(:edit)
        end
      end
    end
  
    # Write similar tests for other controller actions following the pattern above.
  
    # Remember to replace create(:user) with the actual way you create a user in your application, and adjust the factory names if needed.
  end
  