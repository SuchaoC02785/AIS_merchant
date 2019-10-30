from pynput.keyboard import Key, Controller
import datetime
import time

def select_advanceDate(date) :
    keyboard = Controller() 
    # date = 6
    
    for i in range(date+1):
        time.sleep(1) 
        if i == date:
            keyboard.press(Key.enter)
        else:
            keyboard.press(Key.right)
    

def get_date(dateFormat="%d-%m-%Y", addDays=3):

    timeNow = datetime.datetime.now()
    if (addDays!=0):
        anotherTime = timeNow + datetime.timedelta(days=addDays)
    else:
        anotherTime = timeNow

    return anotherTime.strftime(dateFormat)




#test = get_date()
#print (test)
#advance_date = 5
# select_advanceDate(5)
#print(test)

#send_key()
