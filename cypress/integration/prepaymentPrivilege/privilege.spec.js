import { Given, When, Then, And } from "cypress-cucumber-preprocessor/steps"

 Given('Navigated to Prepayment Privilege Page', () => {
    cy.visit(Cypress.env('url')+'/PrivilegePayment.aspx?ID=876145');
    cy.reload()     
 })

 When('Enter the mortage amount {string}', (value) => {
    cy.enter("input[name=MORTAMT]",value)
  })
  And('Enter the interest rate {string}', (value) => {
    cy.enter("input[name=RATE]",value)  
  })
  And('Enter the Mortage payment {string}', (value) => {
    cy.enter("input[name=MAINPAY]",value) 
  })
  And('Enter the lumpsum {string}', (value) => {
    cy.enter('input[name=LUMPAMT]',value)
  })
  And('Enter the increase Payment {string}', (value) => {
    cy.enter("input[name=INCPAY",value)
  })

  And('Select the increase Payment type', () => {
    cy.selectwithIndex("select[name=INCTYPE]",0)
  })

  And('Select Accelerated {string}', (value) => {
    cy.get('select[name=ACCSEL]').select(1,{ force: true })
  })
  
  Then('Validate Error popup {string}',(value)=>
  {
    cy.on("window:alert", (str) => {
        //window:alert is the event which get fired on alert open
          expect(str).to.equal(value)
          cy.log(str)
        cy.get('[name="alert"]').click()
        })
  })

  Then('Click on Calculate', () => {
   cy.doClick("#btnCalculate")
  })
  Then ('Validate Revised Amortization period and savings {string} and {string} and {string}', (value1,value2,value3) => {
    cy.get('input[name=AMNEWY]').should('have.value',value1)
    cy.get('input[name=AMNEWM]').should('have.value',value2)
    cy.get('input[name=AMINTSAVE]').should('have.value',value3)  
  })