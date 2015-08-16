package lib;

/**
 * Created by baeonejune on 15. 8. 16..
 */
public class SUtils {
    public static boolean isIntegerParseInt(String str) {
        try {
            Integer.parseInt(str);
            return true;
        } catch (NumberFormatException nfe) {}
        return false;
    }
}
