AC_DEFUN(AC_CVS_DATE,
[
  cvs_date=`grep ChangeLog CVS/Entries | cut -f4 -d/`
  day=`grep ChangeLog CVS/Entries | cut -f4 -d/ | cut -c9-10 | tr " " "0"`
  month=`echo $cvs_date | cut -f2 -d' '`
  case $month in
    "Jan") month="01" ;;
    "Feb") month="02" ;;
    "Mar") month="03" ;;
    "Apr") month="04" ;;
    "May") month="05" ;;
    "Jun") month="06" ;;
    "Jul") month="07" ;;
    "Aug") month="08" ;;
    "Sep") month="09" ;;
    "Oct") month="10" ;;
    "Nov") month="11" ;;
    "Dec") month="12" ;;
  esac
  year=`echo $cvs_date | cut -f5 -d' '`
  $1="$year$month$day"
])
