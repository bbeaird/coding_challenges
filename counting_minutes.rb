def counting_minutes(str)
  times = str.split('-')
  time1_hour = times[0].split(':')[0].to_i
  time1_hour == 12 ? time1_hour = 0 : time1_hour = time1_hour
  time1_minute = times[0].split(':')[1][0..1].to_i
  time1_am_pm = times[0].split(':')[1][2..3]
  time1_am_pm == 'am' ? time1_am_pm = 0 : time1_am_pm = 60 * 12
  time1_absolute_minutes = 60 * time1_hour + time1_minute + time1_am_pm

  time2_hour = times[1].split(':')[0].to_i
  time2_hour == 12 ? time2_hour = 0 : time2_hour = time2_hour
  time2_minute = times[1].split(':')[1][0..1].to_i
  time2_am_pm = times[1].split(':')[1][2..3]
  time2_am_pm == 'am' ? time2_am_pm = 0 : time2_am_pm = 60 * 12
  time2_absolute_minutes = 60 * time2_hour + time2_minute + time2_am_pm

  if time2_absolute_minutes > time1_absolute_minutes
    return time2_absolute_minutes - time1_absolute_minutes
  else
    return 24 * 60 - (time1_absolute_minutes - time2_absolute_minutes)
  end
end

counting_minutes('11:00am-1:00pm')
counting_minutes('1:00pm-11:00am')
counting_minutes('1:23am-1:08am')
counting_minutes('12:30pm-12:00am')