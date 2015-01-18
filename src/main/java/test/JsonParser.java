package test;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import search.SearchES;

import java.util.Iterator;

/**
 * Created by baeonejune on 15. 1. 11..
 */
public class JsonParser {
    public static void main (String args[]) throws Exception {
        String from = "0";
        String size = "10";
        String query = "nike";
        String prefixUrl = "http://localhost:9200/shop/okmall/_search?";

        String searchUrl = prefixUrl + "from="+from+"&size="+size+"&q="+query;

        SearchES se = new SearchES();
        se.setCrawlUrl(searchUrl);
        se.setCrawlEncoding("utf-8");
        se.search();

        ObjectMapper objectMapper = new ObjectMapper();
        JsonNode rootNode = objectMapper.readTree(se.getCrawlData());
        JsonNode hits = rootNode.path("hits");

        System.out.println(hits.get("total"));
        System.out.println(hits.get("max_score"));


        JsonNode list = hits.path("hits");
        Iterator iterator = list.iterator();
        while(iterator.hasNext()) {
            JsonNode node = (JsonNode)iterator.next();
            System.out.println(node.get("_id").toString());
            System.out.println(node.get("_score").toString());

            JsonNode source = node.path("_source");
            System.out.println(source.get("dataid"));
            System.out.println(source.get("product_name"));
            System.out.println(source.get("url"));
            System.out.println("=======================");
        }
    }
}
