class AccountsController < ApplicationController

	# Get /accounts
	def index
		@accounts = Account.all
		@accounts = Account.tree_view(:padre)
	end

	def show
		@account = Account.find(params[:id])
		@accounts = Account.all
	end

	def edit
		@account = Account.find(params[:id])
		@accounts = Account.all
	end

	def new
		@account = Account.new(:parent_id => params[:parent_id])
		#@account_parent = Account.find(params[:parent_id])
		@accounts = Account.all
	end

	def create
		@padre = Account.find(params[:padre])
		@cuenta = @padre.children.create(account_params)
		@account = Account.new(account_params)

		if @account.save
			redirect_to new_account_path
		else
			render :new
		end

	end

	def update
		@account = Account.find(params[:id])
		if @account.update(account_params)
			redirect_to new_account_path
		else
			render :edit
		end
	end

	def destroy
		@account = Account.find(params[:id])
		@account.destroy
		redirect_to accounts_path
	end

	private

	def account_params
		params.require(:account).permit(:codigo, :nivel, :padre, :imputable, :tipo_saldo, :descripcion)
	end

end