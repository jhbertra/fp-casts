# Ep. 0 - Intro

Hi, and welcome to FP Casts. Today I wanted to give you an overview of how these
episodes work. As this is the first episode, we will limit the discussion to briefly
introducing tools, episode format, and basic syntax.

Each episode demonstrates a concept related to functional programming or static
type systems. Some will be standalone, showcasing a trick or simple technique.
Others will be part of a series that build on each other with each concept introduced.

This series is designed for developers with experience in imperative languages.
Therefore, I will demonstrate each concept in TypeScript first to benefit from its
familiarity. I will then show them in a purely functional language, either PureScript
or Haskell, to examine these concepts in their natural habitat, and help understand
their motivation.

For PureScript, I will use Spago - PureScript's package manager and build tool.
For TypeScript, I will use Deno - a simple, modern and secure runtime for JavaScript
and TypeScript built in Rust.

I want to start with a classic Hello World example. You can see a PureScript implementation
in the left pane, and in the right, you can see an equivalent TypeScript one. I
can run the PureScript example with

```zsh
spago run -m Cast0.Main
```

I can also open an interactive session with

```zsh
spago repl
```

If I import the module by running

```purs
import Cast0.Main
```

I can use the exposed names of the module, `greeting` and `main`.

I can run the TypeScript example with

```zsh
deno 0-intro/main.ts
```

I can also open an interactive session with

```zsh
deno repl
```

I can import our module using dynamic imports and top-level await by running

```typescript
const main = await import("./0-intro/main.ts");
```

and similarly interacting with the exposed names.

This example is simple enough to showcase the episode format without the distraction
of new concepts. However, we can already see some differences that are worth highlighting.

The first difference is module naming. Because TypeScript uses ECMAScript modules,
for which Deno has built-in support, The name of a module is its URI on the local
filesystem or network. PureScript modules are explicitly named. Module names consist
of a period-separated list of identifiers that start with uppercase letters.

Next is the difference between top-level declarations of functions and values. TypeScript,
like other imperative languages, makes an explicit distinction between the two.
Here we have declared a function called main and a constant called greeting. However,
PureScript doesn't make a syntactic distinction between functions and values. From
a conceptual level, values and functions are the same. A function is just a value
awaiting an argument, and a value is just a function that requires no further arguments.

The final significant difference between the examples is the type of the `main`
function. In the TypeScript example, the `main` function has a `void` return type.
In the PureScript example, `main` has the curious type `Effect` of `Unit`. For now,
you can think of `Unit` as being the same as `void`. As for `Effect`, this allows
`main` to perform side-effects. PureScript is a purely functional language, which
means all functions are pure. They cannot access global state, mutate data, or perform
IO. All they can do is transform their arguments into their outputs. `Effect` lifts
this restriction. I'll be revisiting this topic in greater detail in a future episode.

If you enjoyed this episode, or if you have a topic you want me to discuss, please
let me know below in the comments.
