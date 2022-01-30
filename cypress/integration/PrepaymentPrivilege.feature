Feature: validate Prepayment Privilege 

Background: Navigate to Prepayment Privilege Page
 Given Navigated to Prepayment Privilege Page

 Scenario Outline: Validate the Results populated 
 When Enter the mortage amount "<MortgageAmount>"
 And Enter the interest rate "<InterestRate>"
 And Enter the Mortage payment "<MortgagePayment>"
 And Enter the lumpsum "<LumpSum>"
 And Enter the increase Payment "<Increase>"
 And Select the increase Payment type
 And Click on Calculate
 Then Validate Revised Amortization period and savings "<RevisedYr>" and "<RevisedMonth>" and "<Savings>"
 When Click on Compute Amortization Schedule
Then Validate Interactive Amortization Schedule "<MortgageAmount>" and "<InterestRate>" and "<PaymentFrequency>" and "<MortgagePayment>"
 Examples:
  |MortgageAmount|InterestRate|MortgagePayment|PaymentFrequency|Accelerated|LumpSum |Period|Increase|IncreasePeriod|RevisedYr|RevisedMonth|Savings|
  |400,000.00|3.500|1,200|Monthly|No|12000|1|10|1|54|11|511,999.16|


 Scenario Outline: Validate the Error Popup Message 
  When Enter the mortage amount "<MortgageAmount>"
  And Enter the interest rate "<InterestRate>"
  And Enter the Mortage payment "<MortgagePayment>"
  And Select Accelerated "<Accelerated>"
  Then Validate Error popup "Accelerated Payment Frequency not available for Monthly or Semi-Monthly Payment Frequency."
 Examples:
 |MortgageAmount|InterestRate|MortgagePayment|PaymentFrequency|Accelerated|
 |400,000.00|3.500|1,200|Monthly|Yes|


 



