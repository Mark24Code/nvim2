# https://alextaylor.ca/read/writing-neovim-plugins-with-ruby/
# EvalRuby: Run Ruby without leaving Neovim
#
# Usage:
#   - While on a line of Ruby, or in Visual mode
#     with multiple lines selected, type :EvalRuby.
#
# Installation:
#   1. Install neovim-ruby: https://github.com/neovim/neovim-ruby
#
#   2. Put this file in your plugins directory
#      (Default: ~/.config/nvim/rplugin/ruby)
#
#   3. Run :UpdateRemotePlugins to register the
#      new plugin.
#
#   4. Restart Neovim.
#
Neovim.plugin do |plug|
  plug.command(:EvalRuby, range: true) do |nvim, range_start, range_end|
    ruby_code = nvim
      .get_current_buf
      .lines[(range_start - 1)..(range_end - 1)]
      .join("\n")

    result = begin
               eval ruby_code
             rescue => e
               "! #{e.message} (#{e.class})"
             end

    nvim.get_current_buf.append(range_end, "# => #{result.inspect}")
  end
end
