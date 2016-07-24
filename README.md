# NotMarkdown

A simple parser which implements the message formatting syntax [used by Slack](https://get.slack.help/hc/en-us/articles/202288908-Formatting-your-messages).

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add not_markdown to your list of dependencies in `mix.exs`:

        def deps do
          [{:not_markdown, "~> 0.0.1"}]
        end

  2. Ensure not_markdown is started before your application:

        def application do
          [applications: [:not_markdown]]
        end

## Usage

*coughs*

```elixir
NotMarkdown.to_html(text)
```
