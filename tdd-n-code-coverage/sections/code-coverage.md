
## Code Coverage

--- ---

<div class="r-stack">

`\[ CC(\theta_0,\theta n) = \sum_{i=0} / \sum_{l=0} * 100% \]` <!-- .element: class="fragment fade-in-then-out" -->

`\[ CC(\theta_0,\theta n) = \sum_{run} / \sum_{total} * 100% \]` <!-- .element: class="fragment fade-in-then-out" -->

`\[ Code Coverage = Executed / Total * 100% \]` <!-- .element: class="fragment fade-in-then-out" -->

</div>

> Code Coverage Percentage = (Number of lines of code executed by a testing algorithm/Total number of lines of code in a system component) * 100.

--- ---

<div class="r-stack">

![…](https://media.tenor.com/P3IhANYW7-0AAAAS/joker-dont-say-i-didnt-warn-you.gif) <!-- .element: class="fragment fade-in-then-out" style="width: 50vh" -->

```bash
npm test -- --coverage
```
<!-- .element: class="fragment fade-in-then-out" -->

![…](https://www.valentinog.com/blog/static/5ee413ad9f33adcd6c830fe264583f92/715a3/jest-wrong-code-coverage.png) <!-- .element: class="fragment fade-in-then-out" -->

![…](https://media.tenor.com/eeIyFJrl8vQAAAAS/thank-you-for-that-useless-information-mike-alexander.gif) <!-- .element: class="fragment fade-in-then-out" style="width: 50vh" -->

</div>

--- ---

<div class="r-stack">

![…](https://media.tenor.com/2jgbEi-vCuQAAAAS/mando-way-this-is-the-way.gif) <!-- .element: class="fragment fade-in-then-out" width="700"-->

```bash
npm test -- --coverage --collectCoverageFrom="./src/**"
```
<!-- .element: class="fragment fade-in-then-out" -->

![…](https://www.valentinog.com/blog/static/2303f1abd857aa5a07bc9d1feb90744f/d9217/jest-correct-code-coverage.png) <!-- .element: class="fragment fade-in-then-out" -->

```json
{
  ...
  "jest": {
    "collectCoverage": true,
    "collectCoverageFrom": ["./src/**"],
    "coverageThreshold": {
      "global": {
        "lines": 90
      }
    }
  }
}
```
<!-- .element: class="fragment fade-in-then-out" -->

</div>

--- ---

## [Case Coverage](https://kentcdodds.com/blog/how-to-know-what-to-test) <!-- .element: target="_target" -->

<blockquote class="twitter-tweet" data-lang="en" data-dnt="true" data-theme="dark"><p lang="en" dir="ltr">The more your tests resemble the way your software is used, the more confidence they can give you.</p>&mdash; Kent C. Dodds 🌌 (@kentcdodds) <a href="https://twitter.com/kentcdodds/status/977018512689455106?ref_src=twsrc%5Etfw">March 23, 2018</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

--- ---

## Gather abilities

> Where we can cover easely with tests?
> …components, apps, modules, folders, etc…

--- ---

## Gather the need

> Where do we spend most of manual tests?
> …QA knows better, client know better. Write those down

--- ---

## Improve technical support

> Which functionality CHANGES or get UPDATES the most?
> …forms, calculators, controls, algorythms, Busines Logic Entities etc…

--- ---

## Gather

![…](https://media.tenor.com/gqBqTS6Zf6kAAAAC/gather-power.gif)

--- ---

## Configure

<div class="r-stack">

![…](https://media.tenor.com/Nl8pkHgVhPMAAAAS/get-move.gif) <!-- .element: class="fragment fade-in-then-out" width="700" -->

```json
{
  ...
  "jest": {
    "collectCoverage": true,
    "collectCoverageFrom": [
        "./src/modules/A/**",
        "./src/modules/…/**",
        "./src/modules/N/**",
        "./src/components/**",
        // …
    ],
    "coverageThreshold": {
      "global": {
        "lines": 0
      }
    }
  }
}
```
<!-- .element: class="fragment fade-in-then-out" -->

</div>

--- ---

<div class="r-stack">

![…](https://media.tenor.com/rkDY7Jl7QCYAAAAC/lotr-bilbo-baggins.gif) <!-- .element: class="fragment fade-in-then-out" -->

![…](https://media.tenor.com/-UygBh3nnfEAAAAC/coding.gif) <!-- .element: class="fragment fade-in-then-out" -->

</div>

--- ---

* Save QA time! <!-- .element: class="fragment fade-in-then-out" -->
* Improve confidence in MR <!-- .element: class="fragment fade-in-then-out" -->
* Upgrade releases to next level <!-- .element: class="fragment fade-in-then-out" -->

--- ---

## Team Power

![…](https://media.tenor.com/Er8nEPlC1wIAAAAM/teamwork-superman.gif) <!-- .element: width="500" -->

--- ---

![…](https://media.tenor.com/Ltr4Seoti_oAAAAS/demet-ozdemir-sanem-aydin.gif) <!-- .element: width="500" -->

### So coverage threshold? <!-- .element: class="fragment fade-in-then-out" -->

--- ---

### Maintain the threshold

![…](https://media.tenor.com/JQhq91xv1oAAAAAM/were-going-to-keep-this-going-chris-rock.gif) <!-- .element: width="500" -->

--- ---

### RISE the levels

<div class="r-stack">

![…](https://media.tenor.com/kn_KhCkBXKgAAAAS/batmetal-batman.gif) <!-- .element: class="fragment fade-in-then-out" width="500" -->

![…](https://media.tenor.com/0B3JysK_7r0AAAAC/turn-it-up-dj.gif) <!-- .element: class="fragment fade-in-then-out" width="500" -->

</div>

--- ---

### Carefull…

<div class="r-stack">

>  If a part of your test suite is weak in a way that coverage can detect, it's likely also weak in a way coverage can't detect. <!-- .element: class="fragment fade-in-then-out" -->

> I wouldn’t have written four coverage tools if I didn’t think they’re helpful. But they’re only helpful if they’re used to enhance thought, not replace it. <!-- .element: class="fragment fade-in-then-out" -->

</div>

[reference](http://www.exampler.com/testing-com/writings/coverage.pdf)
