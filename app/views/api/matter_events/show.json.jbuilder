json.event do
  json.media {
    json.url @matter_event.url
    json.caption @matter_event.caption
    json.credit @matter_event.credit
  }

  json.start_date{
    json.year @matter_event.year
    json.month @matter_event.month
    json.day @matter_event.day
    json.hour @matter_event.hour
    json.minute @matter_event.minute
  }
  json.text {
    json.headline @matter_event.headline
    json.text @matter_event.text
  }
end
