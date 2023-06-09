# [Leveraging the Event Loop for Blazing-Fast Applications](https://fwdays.com/en/event/javascript-fwdays-2023/review/leveraging-the-event-loop-for-blazing-fast-applications)

by Michael Di Prisco (Jointly)

----

![…](/9_event_loop_for_blazing_fast_web_apps/eventloop.gif)

----

![…](/9_event_loop_for_blazing_fast_web_apps/safe-unsafe-loop.png)

----

## General idea

```js[2-4|16-17|18|19-20]
class Signal {
    _refresh() {
        el.innerHtml = this._value;
    }

    set value(value: unknown) {
        if (
            this._value === value &&
            !this._opts.allowDirty
        ) return;
        this._oldValue = this._value;
        this._value = value;
        this._version += 1;
        this._listeners
            .forEach(fn => fn(value, this._oldValue));
        if (!this._queuedForRerender) {
            this._queuedForRerender = true;
            window.queueMicrotask(() => {
                this._queuedForRerender = false;
                this._refresh();
            });
        }
    }
},
```

----

## Conclusion

* Event loop should be the only loop you have
* Tasks: setImmediate/setTimeout/setInterval don't create blocks
* Microtasks can create a blocking
* Don't clutter the microtask queue! It will cause the same `while(true)` loop

----

## Resource

* <https://dev.to/lydiahallie/javascript-visualized-event-loop-3dif>
* Super simple signal: <https://github.com/Cadienvan/super-simple-signal/blob/main/src/Signal.ts>
