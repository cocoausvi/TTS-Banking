class CheckingAccount < BankAccount
	def initialize(name, number, initial_balance, daily_spending_limit)
		super(name, number, initial_balance)

		@daily_spending_limit = daily_spending_limit
	end

	def print_limit
		p 'Daily Spending Limit is: $' + @daily_spending_limit.to_s
	end
end