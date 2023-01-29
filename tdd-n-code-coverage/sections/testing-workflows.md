## Workflows of Writing Tests

--- ---

## Cover with tests <!-- .element: class="fit-text" -->

<video src="/assets/covering-w-tests.mov" data-autoplay data-loop></video>

--- ---

<video src="/assets/covering-w-tests-n-fixing.mov" data-autoplay data-loop></video>

--- ---

<video src="/assets/tdd-simple.mov" data-autoplay data-loop></video>

--- ---

<video src="/assets/tdd-realistic.mov" data-autoplay data-loop></video>

--- ---

## BDD

--- ---

```gherkin
Feature: Multiple site support
  Only blog owners can post to a blog, except administrators,
  who can post to all blogs.

  Background:
    Given a global administrator named "Greg"
    And a blog named "Greg's anti-tax rants"
    And a customer named "Dr. Bill"
    And a blog named "Expensive Therapy" owned by "Dr. Bill"

  Scenario: Dr. Bill posts to his own blog
    Given I am logged in as Dr. Bill
    When I try to post to "Expensive Therapy"
    Then I should see "Your article was published."
```

--- ---

```gherkin
Feature: showing off behave

  Scenario: run a simple test
     Given we have behave installed
      When we implement a test
      Then behave will test it for us!
```

```python
from behave import *

@given('we have behave installed')
def step_impl(context):
    pass

@when('we implement a test')
def step_impl(context):
    assert True is not False

@then('behave will test it for us!')
def step_impl(context):
    assert context.failed is False
```

--- ---

```gherkin
Scenario: Some cukes
  Given I have 48 cukes in my belly
```

```javascript
const { Given } = require('cucumber')

Given('I have {int} cukes in my belly', function (cukes) {
  console.log(`Cukes: ${cukes}`)
});
```

--- ---

## ATDD

![…](https://www.agilealliance.org/wp-content/uploads/2015/12/BridgingTheCommunicationGap.jpg)
![…](https://m.media-amazon.com/images/I/413QfW9S6NL._SX397_BO1,204,203,200_.jpg)

Note:

* Bridging the Communication Gap: Specification by Example and Agile Acceptance Testing
* "Specification by Example: How Successful Teams Deliver the Right Software
