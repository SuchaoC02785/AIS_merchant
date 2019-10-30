*** Settings ***

Library  DateTime

*** Test Case ***

date
# get current date plus 2 min format 2019-12/30 14:54
  ${date1} =  Get Current Date  increment=00:02:00  result_format='%Y-%m-%d %H:%M'
  log to console  ${date1}
# get current date format 30/10/2019
  ${date2} =  Get Current Date  result_format='%d/%m/%Y
  log to console  ${date2}
# add 7 days from current date format 30/10/2019
  ${date} =  Add Time To Date  ${date1}  7 days    result_format='%d/%m/%Y
  log to console  ${date}