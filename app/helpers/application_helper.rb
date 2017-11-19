module ApplicationHelper
  def my_borrow_contracts(id)
    if Contract.find_by(borrower_id: id)
      return Contract.all.select{|c| c.borrower_id == id}
    else
      return false
    end
  end

  def my_lend_contracts(id)
    if Contract.find_by(lender_id: id)
      return Contract.all.select{|c| c.lender_id == id}
    else
      return false
    end
  end
end
