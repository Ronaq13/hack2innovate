5.times do |u|
  User.create!(
    name: "User #{u + 1}",
    email: "abc_#{u + 1}@xyz.com",
    password: "test1234_#{u+1}",
    credit_score: 500 + u + 10,
    identity_score: 60 + u + 1
  )
end
puts "5 users created"


Lending.create!(lender_id: 1, borrower_id: 2, amount: 500)
puts "1 Lending record created"

5.times do |r|
  Repayment.create!(
               lender_id: 1,
               borrower: 2,
               amount: 100
  )
end
puts "5 Repayment record created"