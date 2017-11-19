class ContractController < ApplicationController
  def lend
    @user = current_user
    @contract = Contract.new
  end

  def borrow
    @user = current_user
    @contract = Contract.new
  end

  def make_borrow
    contract = Contract.new
    contract.borrower_id = current_user.id
    contract.borrower_credit = current_user.credit_score
    contract.borrower_identity = current_user.identity_score
    contract.amount = params[:contract][:amount].to_i
    if(contract.save)
      redirect_to root_path
    else
      redirect_to :back
    end
  end


  def make_lend
    contract = Contract.new
    contract.lender_id = current_user.id
    contract.lender_credit = current_user.credit_score
    contract.lender_identity = current_user.identity_score
    contract.amount = params[:contract][:amount].to_i
    if(contract.save)
      redirect_to root_path
    else
      redirect_to :back
    end
  end

end
