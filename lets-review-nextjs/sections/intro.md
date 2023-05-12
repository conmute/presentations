# Lets talk Next.js

--- --- --- ---

## Use cases

--- ---

### For the SSG

Static Site Generation

Fancy static `html/css` with React hydration.
<!-- .element: class="fragment" data-fragment-index="1" -->

…& create or update static pages <br />***AFTER*** you’ve built your site
<!-- .element: class="fragment" data-fragment-index="2" -->

<aside class="notes">
I tried this out for <www.others.org.ua>, works great with i18n caveat!

ISR Incremental Static Regeneration
</aside>

--- ---

### For the SSR

Server Side Rendering

--- ---

### For the BFF

(Backend 4 Frontend)

--- --- --- ---

## Core parts

--- ---

## SWC instead of webpack

<https://swc.rs/>

> SWC is 20x faster than Babel on a single thread and 70x faster on four cores.

<aside class="notes">
Rust based solution to handle everything that you need:

* Babel
* Typescript
* Bundling

And even can work with WASM!
</aside>

--- ---

## React Server Components (aka RSC)

🪰 & 🍔 separate

<aside class="notes">
Since Next 13.4, released Next App Router it became stable and enabled RSC to full potential with Server Actions Alpha Feature
</aside>

--- ---

![](https://nextjs.org/_next/image?url=%2Fdocs%2Fdark%2Fuse-client-directive.png&w=3840&q=75)
<!-- .element: class="r-stretch" -->

<aside class="notes">

Move Components to Server to solve the "data fetching waterfall problem",

data fetching waterfall problem, is when u need to compromise between:

* Good User Experience
* Cheap Maintainance
* Fast performance

<https://twitter.com/potetotes/status/1341141201827848194>

After hydration, SSR can't be used again - it's typically only used for initial loads. We can refetch React Server Components as many times as we like.

React Server Components are diff but complementary to SSR. Because we render into an intermediate format, we can merge that server tree with the client tree without losing client state.

When used together, you could first render into the intermediate format, and then have your SSR infra render that into HTML so startup can still be fast. But this time your JS bundle is going to be MUCH smaller.

---

Props from server components to client can be passed if it is serializable through the network.

Reminder, functions are NOT serializable
</aside>

--- ---

### RSC: Client 🪰 vs Server 🍔

![](./sections/assets/rsc-server-vs-client.png)
<!-- .element: class="r-stretch" -->

--- ---

### RSC: Shared! 🚽

…"woke" components, depends who call it
<!-- .element: class="fragment" data-fragment-index="1" -->

* 🍔 server component if called in server <!-- .element: class="fragment" data-fragment-index="2" -->
* 🪰 client component with dynamics if rehydrated on client side <!-- .element: class="fragment" data-fragment-index="3" -->

![](./sections/assets/shared-components.png)
<!-- .element: class="r-stretch" -->

--- ---

### NextJS Api

Components / Functions / CLI / Conventions / Edge Runtime

--- --- --- ---

## Source Structure

--- ---

![](./sections/assets/pages-v-app.jpg)
<!-- .element: class="r-stretch" -->

--- ---

## Basic NextJS Pages

![](./sections/assets/pages-tree.png)
<!-- .element: class="r-stretch" -->

--- ---

## Advanced NextJS App Router

![](./sections/assets/app-tree.png)
<!-- .element: class="r-stretch" -->

--- ---

> The Pages Router is still supported in newer versions of Next.js, but we recommend migrating to the new App Router to leverage React's latest features.

<aside class="notes">
Before Next.js 13, the Pages Router was the main way to create routes in Next.js. It used an intuitive file-system router to map each file to a route. The Pages Router is still supported in newer versions of Next.js, but we recommend migrating to the new App Router to leverage React's latest features.
</aside>

--- --- --- ---

## Architecture

--- ---

### Frankly simple…

Think of Static hosting vs Node runtime… BUT!

--- ---

### Vercel Storages

DX for Frontend 😍 with 🤑

![](./sections/assets/vercel-storages.png)
<!-- .element: class="r-stretch" -->

<aside class="notes">
To serve Full-stacks with keen towards Frontend
</aside>

--- ---

### Vercel Integrations

For ex: <https://vercel.com/integrations/highlight>

![](./sections/assets/vercel-integrations.png)
<!-- .element: class="r-stretch" -->

--- ---

### Edge Functions

Serverless scalibility 🚛 <br/>VS <br/>Edge latency-w-performance 🏃‍♂️

![](./sections/assets/vercel-serverless-vs-edge.png)
<!-- .element: class="r-stretch" -->

<aside class="notes">
To serve Full-stacks with keen towards Frontend

Its like Serverless but with `strict` mode on…

<https://edge-runtime.vercel.sh/>

</aside>

--- ---

## Now lets review some code?

--- --- --- ---

### Cal.com

<https://github.com/calcom/cal.com>

--- ---

### Multitenant setup

<https://demo.vercel.pub/platforms-starter-kit>

--- ---

## Simpler rich example

<https://github.com/shadcn/taxonomy>

--- ---

### Hyped <create.t3.gg>

<https://create.t3.gg/>

--- ---

### Nextjs App Router Playground

<https://github.com/vercel/app-playground>

…there is a LOT IN HERE!
