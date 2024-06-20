## So why NX?

- Run once and cache result for next execution! <!-- .element: class="fragment" data-fragment-index="1" -->
- Easy to maintain <!-- .element: class="fragment" data-fragment-index="2" -->
- Supports a lot of frameworks / codebases <!-- .element: class="fragment" data-fragment-index="3" -->
- Good community support <!-- .element: class="fragment" data-fragment-index="4" -->

<aside class="notes">
The framework support is the first selling point
The cached results are the selling point for me during development.
</aside>

===

## NX / Nrwl basics

---

## `project.json`

```json
{
  "name": "@rdd-chrome/sw",
  "$schema": "../../../node_modules/nx/schemas/project-schema.json",
  "sourceRoot": "apps/@rdd-chrome/sw/src",
  "projectType": "application",
  "tags": [],
  "// targets": "to see all targets run: nx show project @rdd-chrome/sw --web",
  "targets": {}
}
```

<aside class="notes">
I work usually with typescript and also work usually with many package.json at once

Nx presents different approach, treat repository as one big orginized coding structure connected through:

- configurations: project.json, build configs, tsconfig, eslint, etc…
- use single package.json (optionally many if there is a need) to manage version in one place
- it results in setting up commands here in `targets`
</aside>

---

## Generators

`nx list <nx plugin>`

```bash
➜  inputscribe git:(main) ✗ nx list @nx/js

 NX   Capabilities in @nx/js:

GENERATORS

library : Create a library
init : Initialize a TS/JS workspace.
convert-to-swc : Convert a TypeScript library to compile with SWC.
release-version : DO NOT INVOKE DIRECTLY WITH `nx generate`. Use `nx release version` instead.
setup-verdaccio : Setup Verdaccio for local package management.
setup-build : setup-build generator
sync : Synchronize TypeScript project references based on the project graph

EXECUTORS/BUILDERS

tsc : Build a project using TypeScript.
swc : Build a project using SWC.
node : Execute a Node application.
release-publish : DO NOT INVOKE DIRECTLY WITH `nx run`. Use `nx release publish` instead.
verdaccio : Start local registry with verdaccio

```

<aside class="notes">
Generators allow to quickly setup a new components,
it is inspired by angular cli generators firsy and prepared to be working for many other projects!

Depends on a framework, see more: <https://nx.dev/plugin-registry>

</aside>

---

## "Configuration plugins"

```javascript
import { nxViteTsPaths } from '@nx/vite/plugins/nx-tsconfig-paths.plugin';

// ...

  plugins: [react(), nxViteTsPaths()],

// ..
```

---

## `--web`

`nx show project @rdd-chrome/sw`

or

`nx graph`

---

![…](/assets/nx.show.graph.png)

<aside class="notes">
The `--web` just adds up more value! For big projects it is remarkable visualizer
</aside>

---

## there is more…

nx extensibility <https://nx.dev/extending-nx>

<aside class="notes">
  extending by building custom generators, but this is for later when nedded (i dont use them yet)
</aside>

---

### Usefull materials

- <https://nx.dev> - yes, its good enough
- [Building custom generators with nx - Youtube](https://www.youtube.com/watch?v=b0pk_tqTmzI&ab_channel=Nx-SmartMonorepos-FastCI)
- <https://nx.dev/extending-nx/intro/getting-started>

===

## Summary… or QA?

<aside class="notes">

With NX there is a power to tackle complexity in the big huge codebases,
manage contracts, configure restrictions and create usefull tools

For projects who GROW and expand, and possibly will add more people to the team NX is a great fit!

It can help reduce maintainance and workspace shenaningans with configurations and just move on with work to be done.

Yet! still again, at least one person should be on the watch about:

- contracts withing monorepo
- migrations and monorepo maintainance
- reviewing extensions and configuration updates

But so far, nx is a time saver!

</aside>
