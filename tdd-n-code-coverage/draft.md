# Code Coverage <br> & TDD

Note:
Згадка про перший K.S.

Запит на покриття тестами та TDD на практиці

--- ---

> You spend much more time reading code than writing code.

звідси… <!-- .element: class="fragment" data-fragment-index="1" -->

Note:
Давайте порівняємо

* скільки діючих проектів ви налаштували та запустили з нуля

проти

* скільки діючих проектів ми просто вносили зміни

?

--- ---

> Читабельність коду чи не найбільше що має значення для розробника

…бо технічний супровід має значення <!-- .element: class="fragment" data-fragment-index="1" -->

Note:
Я працюю зараз на проекті angularjs, де уже офіційно була припинена підтримка ще з 2022 року.
Так 1-ий ангуляр. К-сть продуктів написаних на ньому дуже багато!

Зараз мігрувати проект з angularjs на новий angular це ще та задачка… хоча можлива. Є стаття на тему від нашого конкурента на тему підтримки діючого проекту https://xlts.dev/blog/2021-01-11-what-to-do-when-angularjs-support-runs-out

--- ---

Ми забуваємо! І це нормально

…тому <!-- .element: class="fragment" data-fragment-index="1" -->

Note:
Відомий факт що мозок має вбудовану здібність забувати,

--- ---

Ручне тестування завжди має <br />
супроводжується *test case*-ами

Note:
Звісно ми можемо памятати в голові як працює, але по мірі розвитку продукту покрити усе не вдасться і завжди баги будуть пролазити на сторону користуча

Коли користувачів мало, це не страшно - та по мірі росту настає момент що це уже більше неприпустимо…

Вихід?

--- ---

Слід мати <br> чіткий процес доповнення *test casе*-ів

…але! <!-- .element: class="fragment" data-fragment-index="2" -->

Note:

* Користувач доповів про проблему
* технічна підтримка відкрила тікет
* командою опрацьовано деталі виконання задачі
* розробник пофіксив баг та добавив черговий тест кейс для QA
* на виході в наступний реліз є зміни по тест кейсам!

--- ---

Що відбудеться коли <br>
*test case*-ів забагато?

*Потрібно найняти ще QA!* <!-- .element: class="fragment" data-fragment-index="1" -->

Note:

На попередньому проекті де я працював, була маленька команда з 3-х manual QA які розрослися до двух команд в сумі майже 20 тестувальників

--- ---

## Припустимо!

* Ми матимемо добре описані test case-и <!-- .element: class="fragment" data-fragment-index="1" -->
* В нас буде достатньо manual QA щоб переконатись в якісному релізі <!-- .element: class="fragment" data-fragment-index="2" -->

Що нас може очікувати? <!-- .element: class="fragment" data-fragment-index="3" -->

Note:

В принципі усе добре, та в залежності від ситуації нам або буде потрібно буде ще більше QA!

На цьому ж проекті в нас були часті дебати яким чином це працює, що разу…

* …або тест кейс не проходили і прийшлось переузгоджувати тест кейс і затягувався щотижневий реліз нового функціоналу (звісно і поправляли баги, або і правити тест кейс і правити баги водночас)
* …або проходили тест кейс і могли бути false positive перевірки

Загалом роботу поламаного телефону ніхто не відміняв.

Головна проблема що цей поламаний телефон міг працювати в моменті тестування. Наприклад при зміні QA онбоардинг міг

--- ---

Гарантувати читабельність важко <!-- .element: class="fragment" data-fragment-index="1" -->

тому її можна делегувати в тести <!-- .element: class="fragment" data-fragment-index="2" -->

> Уміти писати тести це найкраща навичка для розвитку ІТ продукту <!-- .element: class="fragment" data-fragment-index="3" -->

Note:
Що

--- ---

## External 1.2

Content 1.2

Note: This will only appear in the speaker notes window. 3

--- ---

## External 2

Content 2.1

--- ---

## External 3.1

Content 3.1

----

## External 3.2

Content 3.2

----

## External 3.3 (Image)

![External Image](https://s3.amazonaws.com/static.slid.es/logo/v2/slides-symbol-512x512.png)

----

## External 3.4 (Math)

`\[ J(\theta_0,\theta_1) = \sum_{i=0} \]`

----

## Element 3.5 attributes

- Item 1 <!-- .element: class="fragment" data-fragment-index="2" -->
- Item 2 <!-- .element: class="fragment" data-fragment-index="1" -->

----

<!-- .slide: data-background="#000000" -->
## Slide attributes

--- ---

A

---

B

---

C

--- ---


## The Lorenz Equations

`\[\begin{aligned}
\dot{x} &amp; = \sigma(y-x) \\
\dot{y} &amp; = \rho x - y - xz \\
\dot{z} &amp; = -\beta z + xy
\end{aligned} \]`

--- ---

![Sample image](https://s3.amazonaws.com/static.slid.es/logo/v2/slides-symbol-512x512.png)

--- ---


```php [1|3-5]
public function foo()
{
    $foo = array(
        'bar' => 'bar'
    )
}
```
