

class User
	
	def initialize( accounts, password, name, balance)
		@name = name # 'Volodymyr', 'Iryna'
		@password = password # 'mypass', 'ho#ll_§1'
		@accounts = accounts #3321, 5922
		@balance = balance #422, 5301
	end
	
	def name
		return @name
	end
	
	def name= (name)
		@name = name 
	end 
	
	def password
		return @password
	end
	
	def password=(password)
		@password = password
	end 
	
	def accounts
		return @accounts
	end
	
	def accounts=(accounts)
		@accounts = accounts
	end 
	
	def balance
		return @balance
	end
	
	def balance=(balance)
		@balance = balance
	end 
	
	
end


us1 = User.new(3321, "mypas", "Volodymyr", 422)
puts "us1 accounts = #{us1.accounts}, password = #{us1.password}, name = #{us1.name}, balance = #{us1.balance}"
us2 = User.new(5922, "ho#ll_&1", "Iryna", 5301)
puts "us2 accounts = #{us2.accounts}, password = #{us2.password}, name = #{us2.name}, balance = #{us2.balance}"
#print( "Please Enter Your Account Number: " )
#print( "> " )
#puts "us1 accounts = #{gets()}" 
#print( "Enter Your Password: " )
#print( "> " )
#puts "us1 password = #{gets()}"
#print( "> " )
#print( "Hello, Volodymyr! " )
#print( "> " )
#puts "us1 name = #{gets()}"
#print( "> " )
#print( "Your Current Balance")
#print( "> " )
#puts "us1 balance = #{gets()}"
#print( "> " )

print( "Please Enter Your Account Number: " )
#print( "> " )

def accountsIs(accounts)
	if  accounts.to_s == '3321' 
		phrase = 'Enter Your Password: '
	elsif accounts.to_s == '5922'
		phrase = 'Enter Your Password: '	
	else
		phrase = 'Wrong options. Plase try again!'
	end
	return phrase
end

accounts1 = us1.accounts.to_s
accounts2 = us2.accounts.to_s
print(accountsIs( accounts1 )+ "\n")
print(accountsIs( accounts2 )+ "\n")


def nameIs( name )
	if name == 'Volodymyr' 
		phrase1 = 'Hello,'
	elsif name == 'Iryna'
		phrase1 = 'Hello,'
	else
		phrase1 = 'Wrong options. Plase try again!'
	end
	return phrase1
end

name1 = us1.name
print(nameIs( name1 )+ name1 + "\n" )
name2 = us2.name
print(nameIs( name2 )+ name2 + "\n")


def balanceIs(balance)
	if  balance.to_s == '422' 
		phrase = 'Your current Balance is: 422 '
	elsif balance.to_s == '5301'
		phrase = 'Your current Balance is: 5301'	
	else
		phrase = 'Wrong options. Plase try again!'
	end
	return phrase
end

balance1 = us1.balance.to_s
balance2 = us2.balance.to_s
print(balanceIs( balance1 )+ "\n")
print(balanceIs( balance2 )+ "\n")

class Errorses < User
	def initialize( accounts, password, name, balance, amount)
		@name = name # 'Volodymyr', 'Iryna'
		@password = password # 'mypass', 'ho#ll_§1'
		@accounts = accounts #3321, 5922
		@balance = balance #422, 5301
		super(accounts, password, name, balance)
	    @amount = amount
	end
	
	def get_amount
		return @amount
	end
	
	def set_amount(amount)
		@amount = amount
	end
end

error1 = Errorses.new(3321, "mypas", "Volodymyr", 422, 3000)
puts "error1 accounts = #{error1.accounts}, password = #{error1.password}, name = #{error1.name}, balance = #{error1.balance}, amount = #{error1.amount}"
	
	def amountIs(amount)
		if amount.to_s > balance.to_s
		phrase3 = 'ERROR: INSUFFICIENT FUNDS! PLEASE ENTER A DIFFERENT AMOUNT:'
		elsif amount.to_s < balance.to_s
		phrase3 = 'ERROR: THE MAXIMUM AMOUNT AVALABLE IN THIS ATM IS 337. PLEASE ENTER A DIFFERENT AMOUNT:'
	else
		phrase3 = 'Enter Amount You Wish to Withdraw:'
	end
	return phrase3
end


amount1 = error1.amount.to_s
amount2 = error2.amount.to_s
print(amountIs( amount1 )+ "\n")
print(amountIs( amount2 )+ "\n")



class ATM < User
	def initialize( accounts, password, name, balance)
		@name = name # 'Volodimir', 'Iryna'
		@password = password # 'mypass', 'ho#ll_&1'
		@accounts = accounts #3321, 5922
		@balance = balance #422, 5301
		super
	end
	
	
	loop do
	puts "Please Choose From the Following Options: "
	
	options = [
		"1- Display Balance",
		"2- Withdraw",
		"3- Log Out"
	]
	
		puts options.join("\n")
		case gets.chomp
		when '1'
			puts("Your current Balance is: " )
			print( "> " )
			
		when '2'
			puts("Enter Amount You Wish to Withdraw: " )
			print( "> " )
		when '3'
			puts("Thank You For Using Our ATM. Good-Bye!" )
			print( "> " )
			break
		else puts( "Wrong options. Plase try again!" )
		print( "> " )
  end
  
end

end

