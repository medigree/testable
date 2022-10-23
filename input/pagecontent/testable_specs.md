Testable FHIR specifications

Process:
(see process overview)

### Key requirements for tooling

* Testable Specifications shall contain verifiable criteria
  * Criteria can be expressed as Requirements. 
  * Criteria can be high-level or detailed scenarios with expected behaviour. The more clear the criteria is, the less ambiguous the test will be.
  * Defining criteria is the responsibility of the requirements author.
  * Criteria should be expressed with FHIR artifacts, not narrative. If requirements are expressed in narrative, they should be uniquely identified and SMART

* Every verifiable criteria/scope shall have a test plan
  * Testable Specifications shall contain a link between test plans and requirements
  * Testable Specifications should indicate which requirements are covered or not by a test plan
  * Testable resources are typically:
    * Requirements
    * ActorDefinitions
    * OperationDefinitions
    * PlanDefinitions (include TransactionDefinitions)
    * ExampleScenarios?
  * A TestPlan is expressed as ...


* A test plan may contains executable Test scripts
  * A test plan may include test scripts where this is possible - typically computable specs that can be automated. 
  * Other areas may not be computably tested, e.g. "logins should not be shared across the team" but may still get a criterium (requirement)
  * Test scripts should be availble in a Postman / Hoppscotch format for automated testing

* Testable Specifications shall contain the necessary artifacts to test
  * test data
  * test data generation

* Testable Specifications should contain deployable artifacts to test systems and tools




