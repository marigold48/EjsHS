import Data.Time (fromGregorian)
import Data.Time.Calendar.WeekDate  (toWeekDate)

-- offsetDias :: Integer -> 
offsetDias jar = toWeekDate $ fromGregorian jar 01 01

main = do
    print (offsetDias 2019)

