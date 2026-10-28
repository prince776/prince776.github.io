---
layout: post
title: "Hello, world"
description: "Starting a blog about systems, codebases, and building things from scratch."
---

I've been making videos about how real systems work — gRPC, Git, Kubernetes, a data race detector, an OS that runs Snake. This blog is the written companion: deeper dives, notes that don't fit in a video, and things I learn along the way.

## What to expect

- **What's In A Codebase** — walkthroughs of how well-known projects are structured.
- **From scratch** — building networking stacks, operating systems, and databases to understand them.
- **Debugging stories** — the weird bugs, like [a CPU instruction that lies](https://www.rubrik.com/blog/architecture/26/6/when-a-cpu-instruction-lies-debugging-silent-data-corruption-in-the-cloud).

Here's what code looks like on this blog:

```go
func (p *trackingBufferPool) Get(length int) *[]byte {
	p.lock.Lock()
	defer p.lock.Unlock()

	p.bufferCount++ // count every live buffer
	return p.pool.Get(length)
}
```

And `inline code` too.

You can follow along via [RSS](/feed.xml) or on [Twitter](https://x.com/codemastercppYT).
