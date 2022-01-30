import { Given, When, Then, And } from "cypress-cucumber-preprocessor/steps"
When('Click on Compute Amortization Schedule',() =>{
 
    cy.doClick('input[value^=Compute]')
  })

  Then ('Validate Interactive Amortization Schedule {string} and {string} and {string} and {string}', (value1,value2,value3,value4) => {
    cy.get('tr font').contains(value1)
    cy.get('tr font').contains(value2)
    cy.get('tr font').contains(value3)
    cy.get('tr font').contains(value4)
    cy.get('center tr:nth-child(3) font :first-child').eq(0).then($ele =>
    {
     cy.log($ele.text())
    })
    cy.get(' center td tr :nth-child(4) ').eq(0).then($ele =>
    {
     cy.log($ele.text())
    })
     
  })
