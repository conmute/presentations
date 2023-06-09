# Lighthouse…

[You’re probably using Lighthouse wrong](https://fwdays.com/en/event/javascript-fwdays-2023/review/using-lighthouse-wrong): How do we misuse the most common tool to measure web performance?

<br />

by Filip Rakowski (Vue Storefront)

----

![…](/8_stop_using_lighthouse_wrong/false-positive.png)

----

> Lighthours algorythms are ALWAYS changing

----

> Just a tool, which is easy to trick

```js
if (navigator.userAgent.index0f("Chrome-Lighthouse") > -1) {
// a version without JavaScript that will score 100x better
} else {
// normal version of your website
}
```

----

> Try Pagespeed insights from different locations

Good decision = `DATA` + `CONTEXT`

----

![…](/8_stop_using_lighthouse_wrong/av-mobile-load-time-google-research.png)

----

## Resources

* <https://wpostats.com>
* <https://developer.chrome.com/docs/crux/dashboard/>
* <https://pagespeed.web.dev/>

----

## Conclusion

* Use Lighthouse to test how new releases affect the performance
* Don't use Lighthouse to measure how users experience your website
* Focus on actual UX metrics
* Use Google [Page Speed Insights](https://pagespeed.web.dev/), it can use other locations
