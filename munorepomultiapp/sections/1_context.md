# Monorepos…

<aside class="notes">
Let's start!
</aside>

===

## What…

- Single repository - many projects? <!-- .element: class="fragment" data-fragment-index="1" -->
- Single project - many modules? <!-- .element: class="fragment" data-fragment-index="2" -->
- Single module - more to come?.. <!-- .element: class="fragment" data-fragment-index="3" -->

<aside class="notes">
Mono-repository - it's when we have single repository to handle multiple apps/projects/modules and code that is reused
</aside>

---

## NPM Monorepos

- Modularise code
- Reuse configuration
- Dependency management

<aside class="notes">
Monorepository can also be developer friendly, but we should focus on developer and devops script management experience.
Documentation is a must!
</aside>

===

## Package managers…

---

## NPM

- default

---

## Yarn

- parrallel install
- better cache / offline mirror
- PnP install

---

## PNPM

- Fastest install
- Uses least disk space
- Flatten dependency

---

## Monorepo tools

- bootstrap apps and libraries <!-- .element: class="fragment" data-fragment-index="1" -->
- generate code and tests <!-- .element: class="fragment" data-fragment-index="2" -->
- generate configurations <!-- .element: class="fragment" data-fragment-index="3" -->
- run tasks <!-- .element: class="fragment" data-fragment-index="4" -->
- … <!-- .element: class="fragment" data-fragment-index="5" -->

<https://monorepo.tools/> <!-- .element: class="fragment" data-fragment-index="6" -->

<aside class="notes">
Package managers are good to install packages… But what about managing actual source code, what we need?
</aside>

---

![…](/assets/monorepo.tools.png)

===

## NX + NX Cloud

<https://nx.dev>

> Nx is a build system with built-in tooling and advanced CI capabilities . It helps you maintain and scale monorepos, both locally and on CI.

<aside class="notes">
With NX its easy to scaffold a project or two, intersect with them and have nice and quick configuration setup for most of the cases.

With NX "project crystal" we can reduce amount of configuration for a `project.json` file that it uses

</aside>

===

## Turbopack

<https://turbo.build/>

Custom bundler and build system written in rust

Currently in beta… <!-- .element: class="fragment" data-fragment-index="1" -->

<aside class="notes">
As a replacement of webpack turbopack is a great idea, and it's written with rust.

It's still in development, and buggy… Also has some optimisers during the run and more related to the build step.

</aside>

===

## Rush

<https://rushstack.io/>

Stack of tools for monorepos

<aside class="notes">
Shhh, these are your private notes 📝
</aside>

===

## Lerna

Manage and publish packages

Nrwl (now nx) took over Lerna as main support!

…
