import java.time.LocalDateTime;
import java.time.ZonedDateTime;
import java.time.ZoneId;

class ImpossibleTimes {
    public static void main(String[] args) {

        // Java LocaldateTime.of with valid input
        LocalDateTime validLocalTime = LocalDateTime.of(2021, 1, 15, 8, 0, 0);
        ZonedDateTime validZonedTime =
            ZonedDateTime.of(validLocalTime, ZoneId.of("UTC"));
        System.out.println(validZonedTime); // prints 2021-01-15T08:00Z[UTC]

        // Java LocaldateTime.of with invalid input
        try {
            LocalDateTime invalidLocalTime = LocalDateTime.of(2021, 2, 30, 8, 0, 0);
            ZonedDateTime invalidZonedTime =
                ZonedDateTime.of(invalidLocalTime, ZoneId.of("UTC"));
            System.out.println(invalidZonedTime);
        } catch(Exception e) {
            System.out.println(e); // prints java.time.DateTimeException: ...
        }
    }
}
