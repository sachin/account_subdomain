#require_dependency "account_subdomain/application_controller"

module AccountSubdomain
  class AccountsController < ApplicationController
    before_action :set_account, only: [:show, :destroy]

    # GET /accounts
    def index
      @accounts = AccountSubdomain::Account.all
    end

    # GET /accounts/1
    def show
    end

    # GET /accounts/new
    def new
      @account = AccountSubdomain::Account.new
    end

    # POST /accounts
    def create
      @account = AccountSubdomain::Account.new(account_params)

      if @account.save
        redirect_to main_app.root_url(:subdomain => @account.subdomain), notice: 'Account was successfully created.'
      else
        render action: 'new'
      end
    end

    # DELETE /accounts/1
    def destroy
      @account.destroy
      redirect_to accounts_url, notice: 'Account was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_account
        @account = AccountSubdomain::Account.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def account_params
        params.require(:account).permit(:subdomain)
      end
  end
end
