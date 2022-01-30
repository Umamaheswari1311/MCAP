Feature: validate Prepayment Privilege 

Background: Navigate to Prepayment Charge Page
 Given Navigated to Prepayment Charge Page

 Scenario Outline: Validate the Error for blank field
 When Enter the Outstanding Balance "<OutstandingBalance>"
 And Select Term year "<TermYr>"
 And Select Term Month "<TermMonth>"
 And Select Payment Frequency "<PaymentFrequency>"
 And Enter the PaymentAmount "<PaymentAmount>"
 And Click on Calculate
 Then Validate error for Blank Current Interest Rate "<Error>"

Examples:
  |OutstandingBalance|TermYr|TermMonth|PaymentFrequency|PaymentAmount|CurrentIR |Error|Penalty|Interestiff|Error|
  |450000|10|5|Bi-Weekly|6500|6.5|$7256.25| $302343.75|Must be a value between 0 and 40% |




