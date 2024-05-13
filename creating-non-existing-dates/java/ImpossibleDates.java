import java.time.LocalDate;

class ImpossibleDates {
    public static void main(String[] args) {

        // Java LocalDate.of with valid input
        LocalDate validDate = LocalDate.of(2021, 1, 15);

        System.out.println(validDate); // prints "2021-01-15"

        // Java Localdate.of with invalid input
        try {
            LocalDate invalidDate = LocalDate.of(2021, 2, 30);
            System.out.println(invalidDate);
        }
        catch(Exception e) {
            System.out.println(e); // prints java.time.DateTimeException: ...
        }
    }
}
