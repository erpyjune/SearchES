package search;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.config.RequestConfig;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.impl.client.HttpClients;
import org.apache.log4j.Logger;


import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.*;

/**
 * Created by baeonejune on 15. 1. 11..
 */
public class SearchES {

    private static Logger logger = Logger.getLogger(SearchES.class.getName());

    private String crawlUrl;
    private String crawlData;
    private String crawlEncoding="UTF-8"; // UTF-8, EUC-KR
    private String requestBody;
    private int reponseCode;
    private int socketTimeout=1000;
    private int connectionTimeout=1000;
    // Request Header
    private static final String USER_AGENT = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36";
    private static final String REFERER = "http://www.google.com/";
    private static final String CONNECTION = "keep-alive";
    private static final String AcceptLanguage = "ko-KR,ko;q=0.8,en-US;q=0.6,en;q=0.4";
    private static final String AcceptEncoding = "gzip, deflate";
    private static final String Host = "google.com";
    private static final String ContentTypeUTF8 = "text/plain;charset=UTF-8";
    private static final String ContentTypeEncode = "application/x-www-form-urlencoded";

    public String getCrawlUrl() {
        return crawlUrl;
    }

    public void setCrawlUrl(String crawlUrl) {
        this.crawlUrl = crawlUrl;
    }

    public String getCrawlData() {
        return crawlData;
    }

    public void setCrawlData(String crawlData) {
        this.crawlData = crawlData;
    }

    public String getCrawlEncoding() {
        return crawlEncoding;
    }

    public void setCrawlEncoding(String crawlEncoding) {
        this.crawlEncoding = crawlEncoding;
    }

    public int getSocketTimeout() {
        return socketTimeout;
    }

    public void setSocketTimeout(int socketTimeout) {
        this.socketTimeout = socketTimeout;
    }

    public int getConnectionTimeout() {
        return connectionTimeout;
    }

    public void setConnectionTimeout(int connectionTimeout) {
        this.connectionTimeout = connectionTimeout;
    }

    public int getReponseCode() {
        return reponseCode;
    }

    public void setReponseCode(int reponseCode) {
        this.reponseCode = reponseCode;
    }

    public String getRequestBody() {
        return requestBody;
    }

    public void setRequestBody(String requestBody) {
        this.requestBody = requestBody;
    }


    public void search() throws Exception {

        if (crawlUrl.isEmpty()) {
            logger.fatal("crawl url is empty!!");
            System.exit(-1);
        }

        CloseableHttpClient httpClient = HttpClients.createDefault();
        RequestConfig requestConfig = RequestConfig.custom()
                .setSocketTimeout(this.socketTimeout)
                .setConnectTimeout(this.connectionTimeout)
                .build();

        logger.info("search:"+this.crawlUrl + "("+this.getClass().getName()+")");
        logger.info("search:"+ URLDecoder.decode(this.crawlUrl,"UTF-8") + "("+this.getClass().getName()+")");

        HttpGet httpGet = new HttpGet(crawlUrl);
        httpGet.addHeader("User-Agent", USER_AGENT);
        httpGet.addHeader("Referer",    REFERER);
        httpGet.addHeader("Connection", CONNECTION);
        httpGet.setConfig(requestConfig);

        CloseableHttpResponse closeableHttpResponse = httpClient.execute(httpGet);
        reponseCode = closeableHttpResponse.getStatusLine().getStatusCode();

        try {
            HttpEntity httpEntity = closeableHttpResponse.getEntity();
            BufferedReader rd = new BufferedReader(
                    new InputStreamReader(closeableHttpResponse.getEntity().getContent(), this.crawlEncoding));

            String line;
            StringBuilder result = new StringBuilder();
            while ((line = rd.readLine()) != null) {
                result.append(line);
                result.append("\n");
            }

            if (result.length() <= 0) {
                this.crawlData = "";
            } else {
                this.crawlData = result.toString();
            }
        } finally {
            closeableHttpResponse.close();
        }
    }


    public void searchPost() throws Exception {
        HttpPost httpPost = new HttpPost(crawlUrl);
        httpPost.addHeader("User-Agent", USER_AGENT);
        httpPost.addHeader("Referer", REFERER);
        httpPost.addHeader("Accept-Encoding", AcceptEncoding);
        httpPost.addHeader("Accept-Language", AcceptLanguage);
        httpPost.addHeader("Content-Type", ContentTypeUTF8);
        httpPost.setConfig(RequestConfig.custom().
                setSocketTimeout(socketTimeout)
                .setConnectTimeout(connectionTimeout)
                .build());

        logger.info("jsonQuery : " + requestBody);
        StringEntity stringEntity = new StringEntity(requestBody);
        httpPost.setEntity(stringEntity);
//        httpPost.setEntity(new UrlEncodedFormEntity(urlParameters));

        HttpClient client = HttpClientBuilder.create().build();
        HttpResponse response = client.execute(httpPost);

        logger.info("repose code : " + response.getStatusLine().getStatusCode());

        BufferedReader bufferedReader = new BufferedReader(
                new InputStreamReader(response.getEntity().getContent(), this.crawlEncoding));

        StringBuilder result = new StringBuilder();
        String line = "";
        while ((line = bufferedReader.readLine()) != null) {
            result.append(line);
        }

        if (result.length() <= 0) {
            this.crawlData = "";
        } else {
            this.crawlData = result.toString();
        }

        bufferedReader.close();
    }


    public SearchResult getSearchResult(String searchResult) throws Exception {
        SearchResult sr = new SearchResult();
        Vector<SearchResultItem> searchResultItems = new Vector<SearchResultItem>();
        SearchResultHeader searchResultHeader = new SearchResultHeader();

        ObjectMapper objectMapper = new ObjectMapper();
        JsonNode rootNode = objectMapper.readTree(searchResult);
        JsonNode hits = rootNode.path("hits");

        System.out.println("total : "+hits.get("total"));
        System.out.println(hits.get("max_score").asText());

        JsonNode list = hits.path("hits");
        Iterator iterator = list.iterator();
        int listCount=0;
        while(iterator.hasNext()) {
            SearchResultItem searchResultItem = new SearchResultItem();
            JsonNode node = (JsonNode)iterator.next();

            searchResultItem.setScore(node.get("_score").textValue());

//            System.out.println(node.get("_id"));
//            System.out.println(node.get("_score"));

            JsonNode source = node.path("_source");
            searchResultItem.setDocid(source.get("dataid").textValue());
            searchResultItem.setProductName(source.get("product_name").textValue());
            searchResultItem.setBrandName(source.get("brand_name").textValue());
            searchResultItem.setContentUrl(source.get("url").textValue());
            searchResultItem.setThumbUrl(source.get("thumb").textValue());
            searchResultItem.setOrgPrice(source.get("org_price").asText());
            searchResultItem.setSalePrice(source.get("sale_price").asText());
            searchResultItem.setSalePer(source.get("sale_per").asText());
            searchResultItem.setCpName(source.get("cp").textValue());
            searchResultItem.setKeyWord(source.get("keyword").textValue());

            searchResultItems.add(searchResultItem);
            listCount++;

//            System.out.println(source.get("dataid"));
//            System.out.println(source.get("product_name"));
//            System.out.println(source.get("url"));
//            System.out.println("=======================");
        }

        searchResultHeader.setListCount(listCount);
        searchResultHeader.setTotalResultCount(Integer.parseInt(hits.get("total").asText()));

        sr.setSearchResultHeader(searchResultHeader);
        sr.setSearchResultItems(searchResultItems);

        return sr;
    }


    public HashMap<String, Object> makePageNavigate(String from, String size, int listCount) throws Exception {
        HashMap<String, Object> map = new HashMap<String, Object>();

        int intFrom = Integer.parseInt(from);
        int intSize = Integer.parseInt(size);

        // for next page
        int nextFrom = intFrom + intSize;
        int nextSize  = intSize;
        map.put("nextFrom", nextFrom);
        map.put("nextSize", nextSize);

        // for prev page
        int prevFrom=0;
        if (intFrom > 0) {
            prevFrom = intFrom - intSize;
        }

        int prevSize = intSize;
        map.put("prevFrom", prevFrom);
        map.put("prevSize", prevSize);

        return map;
    }
}
