# Minimal Repoduction of [`mdBook`](https://github.com/rust-lang/mdBook)'s Broken Landing Page Links Bug

Run `./break-the-links.sh`
and then open <http://0.0.0.0:3000/book/> in the browser.

You will notice that clicking on
the 'another page' link gives a 404 error.


## Not a problem when `/index.md` exists.

```markdown
# Summary

[Landing Page](./landing/page.md)

- [Another Page](./another-page.md)
- [Not the start, but the root.](./index.md)
```

In this case,
<http://0.0.0.0:3000/book/> takes you to `./index.md`.
