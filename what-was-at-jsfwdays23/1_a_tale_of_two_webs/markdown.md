# [A tale of two webs?](https://fwdays.com/en/event/javascript-fwdays-2023/review/a-tale-of-two-webs)

…Continued!

<br />

by Kyle Simpson (Getify Solutions)

----

## Problem: apps to BIG

<div class="r-stack">

Install new app = download full app
<!-- .element: class="fragment fade-in-then-out" -->

Application bundles are huge
<!-- .element: class="fragment fade-in-then-out" -->

Enormous internet dependency
<!-- .element: class="fragment fade-in-then-out" -->

</div>

----

## Suggestion: Shift focus

From DX back to UX

----

## Solution: local-first

<div class="r-stack">

last 4 years: `Serverles`, `Microservices`, `PWA`…
<!-- .element: class="fragment fade-in-then-out" -->

Next year: client-2-client / P2P
<!-- .element: class="fragment fade-in-then-out" -->

</div>

----

…and slight mention about <https://socketsupply.co/>

----

<div class="r-stack">

![…](/1_a_tale_of_two_webs/pricing.png)
<!-- .element: class="fragment fade-in-then-out" -->

![…](/1_a_tale_of_two_webs/p2p_docs.png)
<!-- .element: class="fragment fade-in-then-out" -->

</div>

----

```bash
npm i @socketsupply/socket -g
svn export https://github.com/socketsupply/socket-examples/trunk/basic/todomvc
cd todomvc
npm install
# beware! It might trigger to install bunch of javasdk/cli-tools etc…
npm start
```
