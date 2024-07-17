function conky_now()
  -- current day of month
  local day_of_month = os.date("*t").day
  local suffix = day_of_month == 1 and "st" or day_of_month == 2 and "nd" or day_of_month == 3 and "rd" or "th"
  return os.date("%B " .. tostring(day_of_month) .. suffix .. " %Y")
end

function conky_textcolor()
  return "${color " .. (os.getenv("NOW_CLOCKING_TEXT_COLOR") or "#ffffff") .. "}"
end
