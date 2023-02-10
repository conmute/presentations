## Workflows of Writing Tests

--- ---

## Cover with tests <!-- .element: class="fit-text" -->

<video src="/assets/covering-w-tests.mov" data-autoplay data-loop></video>

--- ---

<video src="/assets/covering-w-tests-n-fixing.mov" data-autoplay data-loop></video>

--- ---

<div class="r-stack">


```javascript
function validBraces(braces){
  var matches = { '(':')', '{':'}', '[':']' };
  var stack = [];
  var currentChar;

  for (var i=0; i<braces.length; i++) {
    currentChar = braces[i];

    if (matches[currentChar]) { // opening braces
      stack.push(currentChar);
    } else { // closing braces
      if (currentChar !== matches[stack.pop()]) {
        return false;
      }
    }
  }

  return stack.length === 0; // any unclosed braces left?
}
```
<!-- .element: class="fragment" data-fragment-index="1" -->

```javascript
describe("Tests suite", function() {
  it("sample tests", function() {
    expect(validBraces("()))")).toEqual(false);
    expect(validBraces("())")).toEqual(true);
    expect(validBraces("[])")).toEqual(true);
    expect(validBraces("{})")).toEqual(true);
    expect(validBraces("(){}[])")).toEqual(true);
    expect(validBraces("([{}]))")).toEqual(true);
    expect(validBraces("(}")).toEqual(false);
    expect(validBraces("[(])")).toEqual(false);
    expect(validBraces("({})[({})])")).toEqual(true);
    expect(validBraces("(})")).toEqual(false);
    expect(validBraces("(({{[[]]}})))")).toEqual(true);
    expect(validBraces("{}({})[])")).toEqual(true);
    expect(validBraces(")(}{][")).toEqual(false);
    expect(validBraces("())({}}{()][][")).toEqual(false);
  });
});
```
<!-- .element: class="fragment" data-fragment-index="2" -->

</div>

--- ---

## TDD

![…](https://miro.medium.com/v2/resize:fit:1400/format:webp/1*3hzZe9LYzaBgOYMH_PpRdQ.png)

--- ---

<video src="/assets/tdd-simple.mov" data-autoplay data-loop></video>

--- ---

<video src="/assets/tdd-realistic.mov" data-autoplay data-loop style="height: 60vh;"></video>

--- ---

<div class="r-stack">

```javascript
function validBraces(parens){
  return false
}
```
<!-- .element: class="fragment fade-in-then-out" -->


```javascript
describe("Tests suite", function() {
  it("sample tests", function() {
    expect(validBraces("()()((()").toEqual(false);
    expect(validBraces( "()" ).toEqual(true);
    expect(validBraces( "()()" ).toEqual(true);
  });
});
```
<!-- .element: class="fragment fade-in-then-out" -->

```javascript
function validBraces(parens){
  var n = 0;
  for (var i = 0; i < parens.length; i++) {
    if (parens[i] == '(') n++;
    if (parens[i] == ')') n--;
    if (n < 0) return false;
  }

  return n == 0;
}
```
<!-- .element: class="fragment fade-in-then-out" -->

```javascript
describe("Tests suite", function() {
  it("sample tests", function() {
    expect(validBraces("()()((()")).toEqual(false);
    expect(validBraces( "()" )).toEqual(true);
    expect(validBraces( "()()" )).toEqual(true);
  });

  it("with square braces now", function() {
    expect(validBraces("()[]")).toEqual(true);
    expect(validBraces("[(])")).toEqual(false);
    expect(validBraces("(([[]]))")).toEqual(true);
  });

});
```
<!-- .element: class="fragment fade-in-then-out" -->


```javascript
const braceMap = {
    '(': ')',
    '[': ']',
};

function validBraces(braces) {
    return !braces.split('').reduce(function (prev, cur) {
        if (cur === braceMap[prev[prev.length - 1]]) {
            prev.pop();
        } else {
            prev.push(cur);
        }
        return prev;
    }, []).length;
}
```
<!-- .element: class="fragment fade-in-then-out" -->


```javascript
describe("Tests suite", function() {

  // …

  it("adding curly braces support on top of it", function() {
    expect(validBraces("(({{[[]]}}))")).toEqual(true);
    expect(validBraces("{}({})[]")).toEqual(true);
    expect(validBraces(")(}{][")).toEqual(false);
    expect(validBraces("())({}}{()][][")).toEqual(false);
  });
});
```
<!-- .element: class="fragment fade-in-then-out" -->

![…](https://media.tenor.com/CybVHd-UZeUAAAAd/rossgeller-friends.gif) <!-- .element: class="fragment fade-in-then-out" -->

</div>

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
