## Engineering Viewpoint <br> on Tests

--- ---

### Different kind of tests <!-- .element: class="fit-text" target="_blank" -->

![…](https://thumbs.dreamstime.com/z/software-testing-word-cloud-random-jargon-glossary-specific-terms-randomly-organized-test-highlighted-colourful-vocabulary-165574009.jpg)

--- ---

[the testing pyramid](https://martinfowler.com/articles/practical-test-pyramid.html)  <!-- .element: class="fit-text" -->

<div style="background-color: white; padding: 3rem;">

![…](https://martinfowler.com/articles/practical-test-pyramid/testPyramid.png)

</div>

Note:

Write tests with different granularity
The more high-level you get the fewer tests you should have

--- ---

* **JUnit**: our test runner
* **Mockito**: for mocking dependencies
* **Wiremock**: for stubbing out external services
* **Pact**: for writing CDC tests
* **Selenium**: for writing UI-driven end-to-end tests
* **REST-assured**: for writing REST API-driven end-to-end tests

--- ---

[The testing trophy](https://kentcdodds.com/blog/the-testing-trophy-and-testing-classifications)  <!-- .element: class="fit-text" target="_blank" -->

<div style="background-color: white; padding: 3rem;">

<div class="r-stack">

![…](https://res.cloudinary.com/kentcdodds-com/image/upload/f_auto,q_auto,dpr_2.0,w_1600/v1622744540/kentcdodds.com/blog/the-testing-trophy-and-testing-classifications/trophy_wx9aen.png)  <!-- .element: width="500" class="fragment" -->

![…](https://pbs.twimg.com/media/DVUoM94VQAAzuws?format=jpg&name=900x900)  <!-- .element: width="500" class="fragment" -->

</div>

</div>

Note:

* End to end w/ @Cypress_io
* Integration & Unit w/ @fbjest
* Static w/ @geteslint

--- ---

* Cypress: End to end
* Jest: Integration & Unit
* ES lint: Static analysis

--- ---

![…](https://media.tenor.com/EGzv3_yiofYAAAAC/ogvhs.gif)

Note:
To much information! Think from general to paricular case
