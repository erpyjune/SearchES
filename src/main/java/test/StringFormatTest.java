package test;

/**
 * Created by baeonejune on 15. 7. 15..
 */
public class StringFormatTest {
    public static void main (String[] args) throws Exception {
        String cate1Query ="{" +
                "\"query\":{" +
                "\"bool\":{" +
                "\"must\":[" +
                "{\"match\":{\"cate1\":\"%s\"}}" +
                "]" +
                "}" +
                "}," +
                "\"from\":%s," +
                "\"size\":%s" +
                "}";

        String cate2Query ="{" +
                "\"query\":{" +
                "\"bool\":{" +
                "\"must\": [" +
                "{\"match\":{\"cate1\":\"%s\"}}," +
                "{\"match\":{\"cate2\":\"%s\"}}" +
                "]" +
                "}" +
                "}," +
                "\"from\" : %s," +
                "\"size\" : %s" +
                "}";

        String cate3Query ="{" +
                "\"query\":{" +
                "\"bool\":{" +
                "\"must\": [" +
                "{\"match\":{\"cate1\":\"%s\"}}," +
                "{\"match\":{\"cate2\":\"%s\"}}," +
                "{\"match\":{\"cate3\":\"%s\"}}" +
                "]" +
                "}" +
                "}," +
                "\"from\" : %s," +
                "\"size\" : %s" +
                "}";


        System.out.println(String.format(cate1Query, "001", "0", "20"));
        System.out.println(String.format(cate2Query, "001", "002", "0", "20"));
        System.out.println(String.format(cate3Query, "001", "002", "003", "0", "20"));
    }
}
