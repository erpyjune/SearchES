package test;

import org.apache.log4j.Logger;
import search.SearchES;

import java.net.URLEncoder;

/**
 * Created by baeonejune on 15. 2. 18..
 */
public class SearchTest {
    private static Logger logger = Logger.getLogger(SearchTest.class.getName());
    public static void main(String[] args) throws Exception {
        String requestBody1="{\"query\" : {\"multi_match\": {\"query\": \"";
        String requestBody2="\",\"type\": \"best_fields\", \"fields\": [ \"product_name^2\", \"brand_name^1\", \"keyword^1\" ]}}}";

        //String query = URLEncoder.encode("나이키", "utf-8");
        String query = "나이키";
        String requestBody = requestBody1 + query + requestBody2;

        SearchES searchES = new SearchES();
        searchES.setCrawlUrl("http://localhost:9200/shop/okmall/_search");
        searchES.setRequestBody(requestBody);
        searchES.setCrawlEncoding("utf-8");
        searchES.setConnectionTimeout(5000);
        searchES.setSocketTimeout(5000);

        searchES.searchPost();

        logger.info("Response Code : " + searchES.getReponseCode());
        logger.info("======== response =======");
        logger.info(searchES.getCrawlData());
    }
}
