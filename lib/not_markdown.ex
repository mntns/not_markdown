defmodule NotMarkdown do

  def to_html(string) do
    string
    |> outer_replace(~r/^>{3}(.+?)\z/sm, "blockquote")
    |> outer_replace(~r/^>(.+?)$/sm, "blockquote")
    |> outer_replace(~r/\*(.+?)\*/, "b")
    |> outer_replace(~r/_(.+?)_/, "i")
    |> outer_replace(~r/~(.+?)~/, "s")
    |> outer_replace(~r/`{3}(.+?)`{3}/sm, "pre")
    |> outer_replace(~r/`(.+?)`/, "code")
    |> create_lists()
  end

  defp create_lists(text) do
    # TODO: list creation (ol/ul)
    text
  end
    
  defp outer_replace(string, regex, tag) do
    Regex.replace(regex, string, fn _, x -> build_tag(x, tag) end)
  end

  defp build_tag(body, tag) do
    "<#{tag}>" <> body <> "</#{tag}>"
  end
end
