package test;

/**
 * Created by baeonejune on 15. 6. 22..
 */
public class NullTest {
    public static void main(String args[]) throws Exception {
        NullData nullData = new NullData();

        if (nullData.getsNull()==null) {
            System.out.println("getsNull is null");
        }

        if (nullData.getsSpace()==null) {
            System.out.println("getsSpace is null");
        }

//        if (nullData.getsNull().length()<=0) {
//            System.out.println("getsNull is less than 0");
//        }

        if (nullData.getsSpace().length()<=0) {
            System.out.println("getsSpace is less than 0");
        }
    }
}
