# Docs or Haytack?

Reiterate with documentations once again…

<aside class="notes">
Shhh, these are your private notes 📝
</aside>

===

Problem:

## Memory instead docs

<aside class="notes">
Usually we rely on personal experience more then documentation.

It first, it sounds great but then on second thought - it's like quoting someone without credits or/and knowing context where it sayd

</aside>

---

Solution:

## Proper reference

<aside class="notes">
It's usually simple, write proper reference when using information. Relying on actual experience and notes helps to align pople not just on trust but also on a actual data.

…or just notes

Here I would align criteria that there are knowledge that can be used for "future reference" and it must be handy and easely to find it…
WHich brings us to another problem

</aside>

===

Problem:

## Haystack

<aside class="notes">
More often then not, we add easely but reuse rarily. Even less we comment and do something about it.

When times comes, first reaction is "I'm lost" next reactions "What tools can help me?" and if lucky search keyword is more then helpfull to navigate

</aside>

---

Solution:

## Architecture or… boundaries

<aside class="notes">
Architecture is a big words. But maybe you hears of phrases:

- Residential architecture - to design and build homes and communities
- Commercial architecture - to build things for commercial purposes
- Internal combustion engine architecture

The word usually tells a lot, and mostly are the boundaries. About that later

It's more about knowledge of where is freedom of activity brings a mess to the rooms / engine / etc…

For documentation, design structure of it for it needs - so that boundaries are held as long as possible and as helpfull as they can ever be.

</aside>

===

Problem:

## Stale

<aside class="notes">
Or it's very easy to become as one, for any documentation page.

Also usually we don't write until someone will need to use it.
Writing docs feels mostly unnecessary, until it isn's and becomes necessary for whatever reasons.

Therefore

</aside>

---

Solution:

## Treat as a transaction log

<aside class="notes">
Based on A.C.I.D. requirements for transactional databases, but here it looks preaty much similar.

So for example, for a team or across teams we say documentation part is a pieace of information which is:

- Atomic - when we read one documentation part, we don't have in mind other parts. Ex: Reading about RegExp syntax, we don't read about ReDos and vise versa
- Consistent - in many ways a documentation part should be consistent with a team need / process or information exchange for multiple reuse
- Isolation - Change of single piece should be some sort of degree isolation from others, as much as necessary. It's necessary to reduce hopping many times back and forth. For example writing a quote from a book is better then just saying a ISBN and page number…
- Durability - well… for documentations it's a tough one, but we need it! Unless, in unreliable

So I recomend to treaat documentation pieaces as A.C.I.D. components to be self sufficient atomic pieaces which have consistency in writings/structure/need for the team, be usefull for team even if isolated from other pieaces and viable for long enough period of time.

</aside>

===

## How to implement these solutions?

<aside class="notes">
So there is a lot sayd, that sounds simple and promising. How it can work?
</aside>

---

Part 1:

## Zettelkasten notes

---

<div class="r-stretch">

![Flow](https://forum.zettelkasten.de/uploads/editor/9m/comjwwve7yw2.png)

</div>

<aside class="notes">
A system of development knowledge by linking and cataloging lines of thought in form of notes.

In this case, Friction becomes a friend. The notes should be intentional of what we bring into the knowledge base.

Though Zettelkasten is a thinking pattern and a personal matter, but we can use values from there.

- A physical card used there is 60-100 words, and perhaps if we are not able to make an idea from that - than our understanding is bad.
- A note should have a reference

</aside>

---

- Source notes
- Main notes - references parts from source notes

<aside class="notes">
And that's it! The core is that there should be reference build all the time for all of the notes. By doing so we will build natural knowledge of what we are doing
</aside>

===

Part 2:

## Second brain

"Where I will actually use this information?"

<aside class="notes">
All gathered nots, can be poured into living updatable thhings that we can call a state, or most actual experience.

For me personally, it's not much different for a brain. Because though we know previous experience, we mostly use most reliable once.

Organize by actionability rather then by topic…

</aside>

---

## Second brain: capture

(covered with Zettelkasten)

<aside class="notes">
Small parts matter, things that we use and we find useful for others (perhaps) can build up into something bigger.

So knoledge base can be captured in two types: source and thoughts on source quotes, we simply link them together

</aside>

---

## Second brain: Orginize

P.A.R.A.

(Projects, Areas, Resources, Archives)

<aside class="notes">
For developer teems, projects are something that we can call a deliverable/feature or perhaps an epic.

- Projects: efforts with a specific outcome and a dead-line (short-term)
- Areas: Ongoing responsibilities with ongoing standards (long-term)
- Resources: Topics or themes of ongoing interest.
- Archives: to keep things for the history cause…
</aside>

---

## Second brain: Distill

<aside class="notes">
As a team, we already wanna write DISTILLED notes into orginized areas. We put effort into it,
but this point exists here in case if we wanna move fast and take care of quality/restrains.

If so, we need to have a separate step when we paraphrasing in more simple words of all work that has been done and update things in our structure

</aside>

---

## Second brain: Express!

<aside class="notes">
The saying goes like this: avoid meta work!

If there is no intention of the final result/deliverable or in context of the book, expression is the end results.

</aside>

===

## A hybrid flow?

---

```
/DevOps
  /Projects
  /Documentation
  /Notes
/NPM
  /Projects
  /Documentation
  /Notes
/Archive
```

<aside class="notes">
So the notes is just flat list of sources and thoughts or adaptation of source quotes

For projects, we should keep a knowledge that can be helpfull to take ACTION towards that project specificly,
for example:

</aside>

---

```
/DevOps Projects
/DevOps Documentation
/DevOps Notes
/NPM Projects
/NPM Documentation
/Archive
```

## Element 3.5 attributes

- Item 1 <!-- .element: class="fragment" data-fragment-index="2" -->
- Item 2 <!-- .element: class="fragment" data-fragment-index="1" -->

<aside class="notes">
Shhh, these are your private notes 📝
</aside>

---

<!-- .slide: data-background="#000000" -->

## Slide attributes

<aside class="notes">
Shhh, these are your private notes 📝
</aside>

---

A

---

B

---

C

<aside class="notes">
Shhh, these are your private notes 📝
</aside>

---

## The Lorenz Equations

`\[\begin{aligned}
\dot{x} &amp; = \sigma(y-x) \\
\dot{y} &amp; = \rho x - y - xz \\
\dot{z} &amp; = -\beta z + xy
\end{aligned} \]`

<aside class="notes">
Shhh, these are your private notes 📝
</aside>

---

![Sample image](https://s3.amazonaws.com/static.slid.es/logo/v2/slides-symbol-512x512.png)

<aside class="notes">
Shhh, these are your private notes 📝
</aside>

---

```php [1|3-5]
public function foo()
{
    $foo = array(
        'bar' => 'bar'
    )
}
```

<aside class="notes">
Shhh, these are your private notes 📝
</aside>
