defmodule NotMarkdown do

  @bold_rgx ~r/\*(.+?)\*/
  @italics_rgx ~r/_(.+?)_/
  @strikethrough_rgx ~r/~(.+?)~/

  def to_html(string) do
    string
    |> apply_bold
    |> apply_italics
  end

  def apply_bold(str) do
    Regex.replace(@bold_rgx, str, fn _, x -> "<b>#{x}</b>" end)
  end

  def apply_italics(str) do
    Regex.replace(@italics_rgx, str, fn _, x -> "<i>#{x}</i>" end)
  end

  def enclose(str) do
    "<p>" <> str <> "</p>"
  end
end
