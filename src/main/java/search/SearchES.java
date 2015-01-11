package search;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.apache.http.HttpEntity;
import org.apache.http.client.config.RequestConfig;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;


import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/**
 * Created by baeonejune on 15. 1. 11..
 */
public class SearchES {

    private String crawlUrl;
    private String crawlData;
    private String crawlEncoding="UTF-8"; // UTF-8, EUC-KR
    private int socketTimeout=1000;
    private int connectionTimeout=1000;
    private static final String USER_AGENT = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36";
    private static final String REFERER = "http://www.google.com/";
    private static final String CONNECTION = "keep-alive";

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

    public void search() throws Exception {
        CloseableHttpClient httpClient = HttpClients.createDefault();
        RequestConfig requestConfig = RequestConfig.custom()
                .setSocketTimeout(this.socketTimeout)
                .setConnectTimeout(this.connectionTimeout)
                .build();

        HttpGet httpGet = new HttpGet(this.crawlUrl);
        httpGet.addHeader("User-Agent", this.USER_AGENT);
        httpGet.addHeader("Referer",    this.REFERER);
        httpGet.addHeader("Connection", this.CONNECTION);

        httpGet.setConfig(requestConfig);
        CloseableHttpResponse closeableHttpResponse = httpClient.execute(httpGet);
        try {
            HttpEntity httpEntity = closeableHttpResponse.getEntity();
            System.out.println(closeableHttpResponse.getStatusLine().getStatusCode());
            BufferedReader rd = new BufferedReader(
                    new InputStreamReader(closeableHttpResponse.getEntity().getContent(), this.crawlEncoding));
            String line;
            StringBuffer result = new StringBuffer();
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


    public ArrayList<SearchData> searchResultParse(String searchResult) throws Exception {
        ArrayList<SearchData> searchDatas = new ArrayList<SearchData>();

        ObjectMapper objectMapper = new ObjectMapper();
        JsonNode rootNode = objectMapper.readTree(searchResult);
        JsonNode hits = rootNode.path("hits");

        System.out.println(hits.get("total"));
        System.out.println(hits.get("max_score"));


        JsonNode list = hits.path("hits");
        Iterator iterator = list.iterator();
        while(iterator.hasNext()) {
            SearchData searchData = new SearchData();
            JsonNode node = (JsonNode)iterator.next();

            searchData.setScore(node.get("_score").textValue());

//            System.out.println(node.get("_id"));
//            System.out.println(node.get("_score"));

            JsonNode source = node.path("_source");
            searchData.setDocid(source.get("dataid").textValue());
            searchData.setProductName(source.get("product_name").textValue());
            searchData.setBrandName(source.get("brand_name").textValue());
            searchData.setContentUrl(source.get("url").textValue());
            searchData.setThumbUrl(source.get("thumb").textValue());
            searchData.setOrgPrice(source.get("org_price").asText());
            searchData.setSalePrice(source.get("sale_price").asText());
            searchData.setSalePer(source.get("sale_per").asText());
            searchData.setCpName(source.get("cp").textValue());
            searchData.setKeyWord(source.get("keyword").textValue());

            searchDatas.add(searchData);

//            System.out.println(source.get("dataid"));
//            System.out.println(source.get("product_name"));
//            System.out.println(source.get("url"));
//            System.out.println("=======================");
        }

        return searchDatas;
    }
}
