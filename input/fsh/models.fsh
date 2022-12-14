Logical: FoodAllergyModel
Title: "Food Allergy Logical Model"
Description:    "Food Allergy information model"

* patient 1..1 Reference "The person that has the allergy" "The person that has the allergy"
* allergen 1..1 CodeableConcept "The substance that the person is allergic to" "The substance - from a list of substances - that the person is allergic to. It is possible to use free text but for the products indicated, a code must be used"
* clinicalStatus 1..1 CodeableConcept "The status of the allergy - if it is active or resolved" "The status of the allergy - if it is active or resolved"
* verificationStatus 1..1 CodeableConcept "The verification status of the allergy - if it is confirmed or suspected or refuted" "The verification status of the allergy - if it is confirmed or suspected or refuted"
* recordedDate 0..1 dateTime "When the allergy was reported" "When the allergy was reported"
* recorder 0..1 Reference "Who recorded the allergy" "Who recorded the allergy"
* asserter 0..1 Reference "Who asserted the allergy" " who asserted or provided the allergy information e.g. the patient, a relative, a care giver..."
* reactions 0..1 BackboneElement "known past reactions to the allergen" "known past reactions to the allergen"
  * manifestation 0..1 CodeableConcept "How the reaction manifested itself"  "How the reaction manifested itself, e.g. rash, breathing difficulty..."
  * certitude 0..1 CodeableConcept "How certain we are that the cause of the reaction was the allergen indicated" "How certain we are that the cause of the reaction was the allergen indicated"
  * exposure 0..1 CodeableConcept "The exposure route to the substance" "The exposure route to the substance"
  * note 0..1 string "Additional text note about the allergic reaction" "Additional text note about the allergic reaction"



Logical: TestPlan
Title: "Test Plan"
Description:    "Test Plan"

* url 0..1 uri "canonical identifier"
* identifier 0..* Identifier "Business identifier"
* version 0..* string "version"
* name 0..* string "Name"
* title 0..* string "Title"
* status 0..* code "Status"
* date 0..* dateTime "date"
* publisher 0..* string "Publisher"
* contact 0..* ContactDetail "Contact"
* description 0..1 markdown "Description"
* jurisdiction 0..* CodeableConcept "Jurisdiction"
* purpose 0..1 markdown "purpose"
* copyright 0..1 markdown "Copyright"

* category 0..* CodeableConcept "The category of the Test Plan - can be acceptance, unit, performance,..."
* scope 0..* Reference "What is being tested with this Test Plan - a conformance resource, or narrative criteria, or an external reference..."


* testTools 0..1 markdown "A description of test tools to be used in the test plan - narrative for now"

* dependencies 0..* BackboneElement "The required criteria to execute the test plan - e.g. preconditions, previous tests..."
  * description 0..1 markdown "description of the criteria"
  * predecessor 0..1 Reference "link to predecessor test plans"

* exitCriteria 0..1 markdown "The threshold or criteria for the test plan to be considered successfully executed - narrative"

* testCase 0..* BackboneElement "The test cases that are part of this plan"
  * sequence 0..1 integer "Sequence of testing"
  * scope 0..* Reference "Specific test scope for one test case"
  * dependencies 0..* BackboneElement "The required criteria to execute the test case - e.g. preconditions, previous tests..."
    * description 0..1 markdown "description of the criteria"
    * predecessor 0..1 Reference "link to predecessor test plans"
  * testRun 0..* Reference "The actual test to be executed"
    * narrative 0..1 markdown "The narrative description of the tests"
    * script 0..1 BackboneElement "The test cases in a structured language e.g. gherkin, Postman, or FHIR TestScript"
      * language 0..1 CodeableConcept "The language for the test cases e.g. 'gherkin', 'testscript'"
      * source[x] 0..1 string or Reference "The actual content of the cases - references to TestScripts or externally defined content"
  * testData 0..* BackboneElement "The test data used in the test case"
    * type 1..1 Coding "The type of test data description, e.g. 'synthea'"
    * content 0..1 Reference "The actual test resources when they exist"
    * source[x] 0..1 string or Reference "Pointer to a definition of test resources - narrative or structured e.g. synthetic data generation, et."
  * assertions 0..* BackboneElement "The test data used in the test case"
