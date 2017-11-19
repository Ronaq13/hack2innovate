class ListController < ApplicationController
  def lending_appliction
    @lendapps = Contract.all.select{|c| c.lender_id == nil}
  end

  def borrowing_application
    @borrowapps = Contract.all.select{|c| c.borrower_id == nil}
  end

  def particular_item
    contract = Contract.find(params[:contract_id].to_i)
    # current_user is borrower
    if(contract.borrower_id.nil?)
      contract.borrower_id = current_user.id
      contract.borrower_credit= current_user.credit_score
      contract.borrower_identity= current_user.identity_score
    end

    if(contract.lender_id.nil?)
      contract.lender_id = current_user.id
      contract.lender_credit= current_user.credit_score
      contract.lender_identity= current_user.identity_score
    end

    redirect_to root_path
  end

end
