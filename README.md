# Counter

The first and most simple project from the book [Designing Elixir Systems with OTP](https://pragprog.com/titles/jgotp/designing-elixir-systems-with-otp/), a Counter!

Is not as simple as `counter = count + 1`. This exercise demonstrate the most basic way of thinking and take away of the book: Do Fun Things with Big, Loud Worker-Bees.

## How to run the project?

- Install [mise](https://mise.jdx.dev/getting-started.html) (previously `rtx`) , `cd` into the project directory and run:

```bash
mise install
```

- `cd` into the project directory and run the following to install and setup dependencies:

```bash
mix deps.get
```

```bash
mix compile
```

- Run the project with

```bash
iex -S mix
```

- Use the project API

```elixir
counter_pid = Counter.start(0)

Counter.tick(counter_pid)
Counter.tick(counter_pid)

Counter.state(counter_pid)
```