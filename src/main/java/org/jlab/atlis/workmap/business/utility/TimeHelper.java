package org.jlab.atlis.workmap.business.utility;

import java.util.Calendar;
import java.util.Date;

/**
 * @author ryans
 */
public class TimeHelper {
  public static Date getCurrentYearMonthDay() {
    Calendar c = Calendar.getInstance();
    c.set(Calendar.HOUR_OF_DAY, 0);
    c.set(Calendar.MINUTE, 0);
    c.set(Calendar.SECOND, 0);
    c.set(Calendar.MILLISECOND, 0);

    return c.getTime();
  }

  public static Date getPreviousYearMonthDay(Date yearMonthDay) {
    Calendar c = Calendar.getInstance();
    c.setTime(yearMonthDay);
    c.set(Calendar.HOUR_OF_DAY, 0);
    c.set(Calendar.MINUTE, 0);
    c.set(Calendar.SECOND, 0);
    c.set(Calendar.MILLISECOND, 0);
    c.add(Calendar.DATE, -1);

    return c.getTime();
  }

  public static Date getNextYearMonthDay(Date yearMonthDay) {
    Calendar c = Calendar.getInstance();
    c.setTime(yearMonthDay);
    c.set(Calendar.HOUR_OF_DAY, 0);
    c.set(Calendar.MINUTE, 0);
    c.set(Calendar.SECOND, 0);
    c.set(Calendar.MILLISECOND, 0);
    c.add(Calendar.DATE, 1);

    return c.getTime();
  }
}
