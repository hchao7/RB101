
def prompt(message)
	puts "=> #{message}"
end 

def integer_validation(input, validation_type)
  num = input.to_i
  if validation_type == "loan"
		return (num.to_s == input) && (num.to_i > 0)
  else     
		return (num.to_s == input) && (num.to_i >= 0)
  end
end 

def float_validation(input, validation_type)
  num = input.to_f
  if validation_type ==  "loan"
		return (num.to_s == input) && (num.to_f > 0) 
  else 
		return (num.to_s == input) && (num.to_f >= 0)
  end
end 

def validate_loan_interest(input, validation_type)
  return integer_validation(input, validation_type) || float_validation(input, validation_type)
end

# main loop
loop do
  prompt("Welcome to the Mortgage Calculator!")

  loan_amount = '0'
  annual_percentage_rate = '0'
  loan_years = '0'

  # Enter loan amount
  loop do 
    puts "Enter loan amount: "
    loan_amount = gets.chomp
    break if validate_loan_interest(loan_amount, "loan")
    prompt("Please provide a positive loan amount greater than 0.")
  end 

  # Enter annual percentage rate
  loop do 
    puts "Enter Annual Percentage Rate: "
    annual_percentage_rate = gets.chomp
    break if validate_loan_interest(annual_percentage_rate, "APR")
    prompt("Please provide a positive interest amount.")
  end 

  # Enter loan duration
  loop do 
    puts "Enter loan duration in Years: "
    loan_years = gets.chomp
    break if (loan_years.to_i.to_s == loan_years) && (loan_years.to_i > 0)
    prompt("Please provide a positive loan amount greater than 0.")
  end

  # Calculate monthly APR
  annual_percentage_rate_num = annual_percentage_rate.to_f
  monthly_APR = (annual_percentage_rate_num / 12) / 100

  # Calculate loan months duration
  loan_years_num = loan_years.to_i
  loan_months = loan_years_num * 12

  # Calculate monthly payment
  monthly_payment = (loan_amount.to_f) * (monthly_APR / (1 - (1 + monthly_APR)**(-loan_months)))
  prompt("Your monthly payment is: $#{format('%.2f', monthly_payment)}")

  prompt("If you would like to perform another calculation, enter y: ")
  answer = gets.chomp
  break unless answer.downcase().start_with?('y')
end 

prompt("Thank you for using the Mortgage Calculator!")

