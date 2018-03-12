module WarframesHelper
  def current_warframe_link(warframe)
    return current_link + "warframes/" + warframe.id.to_s
  end
end
