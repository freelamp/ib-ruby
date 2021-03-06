require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe Ib::ContractDetailsController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # Ib::ContractDetail. As you add validations to Ib::ContractDetail, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {:market_name => 'AAPL',
     :trading_class => 'AAPL',
     :min_tick => 0.01,
     :price_magnifier => 1,
     :order_types => 'ACTIVETIM,ADJUST,ALERT,ALGO,ALLOC,AON,AVGCOST,BASKET,COND,CONDORDER,DAY,DEACT,DEACTDIS,DEACTEOD,FOK,GAT,GTC,GTD,GTT,HID,ICE,IOC,LIT,LMT,MIT,MKT,MTL,NONALGO,OCA,PAON,POSTONLY,RELSTK,SCALE,SCALERST,SMARTSTG,STP,STPLMT,TRAIL,TRAILLIT,TRAILLMT,TRAILMIT,VOLAT,WHATIF,',
     :valid_exchanges => 'SMART,AMEX,BATS,BOX,CBOE,CBOE2,IBSX,ISE,MIBSX,NASDAQOM,PHLX,PSE', #   The list of exchanges this contract is traded on.
     :under_con_id => 265598,
     :long_name => 'APPLE INC',
     :contract_month => '201301',
     :industry => 'Technology',
     :category => 'Computers',
     :subcategory => 'Computers',
     :time_zone => 'EST',
     :trading_hours => '20120422:0930-1600;20120423:0930-1600',
     :liquid_hours => '20120422:0930-1600;20120423:0930-1600',
     }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # Ib::ContractDetailsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all contract_details as @contract_details" do
      contract_detail = Ib::ContractDetail.create! valid_attributes
      get :index, { :use_route => true}, valid_session
      assigns(:contract_details).should eq([contract_detail])
    end
  end

  describe "GET show" do
    it "assigns the requested contract_detail as @contract_detail" do
      contract_detail = Ib::ContractDetail.create! valid_attributes
      get :show, {:id => contract_detail.to_param, :use_route => true}, valid_session
      assigns(:contract_detail).should eq(contract_detail)
    end
  end

  describe "GET new" do
    it "assigns a new contract_detail as @contract_detail" do
      get :new, { :use_route => true}, valid_session
      assigns(:contract_detail).should be_a_new(Ib::ContractDetail)
    end
  end

  describe "GET edit" do
    it "assigns the requested contract_detail as @contract_detail" do
      contract_detail = Ib::ContractDetail.create! valid_attributes
      get :edit, {:id => contract_detail.to_param, :use_route => true}, valid_session
      assigns(:contract_detail).should eq(contract_detail)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Ib::ContractDetail" do
        expect {
          post :create, {:contract_detail => valid_attributes, :use_route => true}, valid_session
        }.to change(Ib::ContractDetail, :count).by(1)
      end

      it "assigns a newly created contract_detail as @contract_detail" do
        post :create, {:contract_detail => valid_attributes, :use_route => true}, valid_session
        assigns(:contract_detail).should be_a(Ib::ContractDetail)
        assigns(:contract_detail).should be_persisted
      end

      it "redirects to the created contract_detail" do
        post :create, {:contract_detail => valid_attributes, :use_route => true}, valid_session
        response.should redirect_to(Ib::ContractDetail.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved contract_detail as @contract_detail" do
        # Trigger the behavior that occurs when invalid params are submitted
        Ib::ContractDetail.any_instance.stub(:save).and_return(false)
        post :create, {:contract_detail => {}, :use_route => true}, valid_session
        assigns(:contract_detail).should be_a_new(Ib::ContractDetail)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Ib::ContractDetail.any_instance.stub(:save).and_return(false)
        post :create, {:contract_detail => {}, :use_route => true}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested contract_detail" do
        contract_detail = Ib::ContractDetail.create! valid_attributes
        # Assuming there are no other contract_details in the database, this
        # specifies that the Ib::ContractDetail created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Ib::ContractDetail.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => contract_detail.to_param, :contract_detail => {'these' => 'params'}, :use_route => true}, valid_session
      end

      it "assigns the requested contract_detail as @contract_detail" do
        contract_detail = Ib::ContractDetail.create! valid_attributes
        put :update, {:id => contract_detail.to_param, :contract_detail => valid_attributes, :use_route => true}, valid_session
        assigns(:contract_detail).should eq(contract_detail)
      end

      it "redirects to the contract_detail" do
        contract_detail = Ib::ContractDetail.create! valid_attributes
        put :update, {:id => contract_detail.to_param, :contract_detail => valid_attributes, :use_route => true}, valid_session
        response.should redirect_to(contract_detail)
      end
    end

    describe "with invalid params" do
      it "assigns the contract_detail as @contract_detail" do
        contract_detail = Ib::ContractDetail.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Ib::ContractDetail.any_instance.stub(:save).and_return(false)
        put :update, {:id => contract_detail.to_param, :contract_detail => {}, :use_route => true}, valid_session
        assigns(:contract_detail).should eq(contract_detail)
      end

      it "re-renders the 'edit' template" do
        contract_detail = Ib::ContractDetail.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Ib::ContractDetail.any_instance.stub(:save).and_return(false)
        put :update, {:id => contract_detail.to_param, :contract_detail => {}, :use_route => true}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested contract_detail" do
      contract_detail = Ib::ContractDetail.create! valid_attributes
      expect {
        delete :destroy, {:id => contract_detail.to_param, :use_route => true}, valid_session
      }.to change(Ib::ContractDetail, :count).by(-1)
    end

    it "redirects to the contract_details list" do
      pending 'Something is wrong with RSpecs redirect_to matcher'
      contract_detail = Ib::ContractDetail.create! valid_attributes
      delete :destroy, {:id => contract_detail.to_param, :use_route => true}, valid_session
      response.should redirect_to(contract_details_url)
    end
  end

end
