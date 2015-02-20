package search;

import org.apache.log4j.Logger;

import javax.servlet.http.HttpServletRequest;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;

/**
 * Created by baeonejune on 15. 1. 13..
 */
public class QueryProcessor {

    private static Logger logger = Logger.getLogger(QueryProcessor.class.getName());

    private String from;
    private String size;
    private String sort;
    private String originalQuery;
    private String searchQuery;
    private String searchQueryParam;
    private HashMap<String, Object> queryParamList;

    private final String prefixUrl = "http://localhost:9200/shop/okmall/_search?pretty=true&";


    public String getFrom() {
        return from;
    }

    public void setFrom(String from) {
        this.from = from;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public String getOriginalQuery() {
        return originalQuery;
    }

    public void setOriginalQuery(String originalQuery) {
        this.originalQuery = originalQuery;
    }

    public String getSearchQuery() {
        return searchQuery;
    }

    public void setSearchQuery(String searchQuery) {
        this.searchQuery = searchQuery;
    }

    public String getSearchQueryParam() {
        return searchQueryParam;
    }

    public void setSearchQueryParam(String searchQueryParam) {
        this.searchQueryParam = searchQueryParam;
    }

    public HashMap<String, Object> getQueryParamList() {
        return queryParamList;
    }

    public void setQueryParamList(HashMap<String, Object> queryParamList) {
        this.queryParamList = queryParamList;
    }

    public String getPrefixUrl() {
        return prefixUrl;
    }

    public String getSort() {
        return sort;
    }

    public void setSort(String sort) {
        this.sort = sort;
    }

    public void paramParser(HttpServletRequest request) throws  Exception {
        String from = request.getParameter("from");
        String size = request.getParameter("size");
        String sort = request.getParameter("sort");

        String orgQuery = new String(request.getParameter("query").getBytes("ISO-8859-1"), "UTF-8");
        if (orgQuery.isEmpty()) {
            orgQuery = "*";
        }

        //String searchQuery = URLEncoder.encode(orgQuery, "UTF-8");
        String searchQuery = orgQuery;

        logger.info("searchQuery : " + searchQuery);


        if (from==null)  from = "0";
        if (size==null)  size = "20";

        this.from = from;
        this.size = size;
        this.sort = sort;
        this.originalQuery = orgQuery;
        this.searchQuery = searchQuery;
    }

    public void makeQueryUriParam() throws Exception {
        StringBuilder sb = new StringBuilder(prefixUrl);
        sb.append("from=").append(from);
        sb.append("&size=").append(size);
        sb.append("&q=").append(searchQuery);

        searchQueryParam = sb.toString();
    }

    public void makeQueryJsonParam() throws Exception {
//        String str = "http://localhost:9200/shop/okmall/_search?source=" +
//                "{\"query\" : {\"multi_match\": {\"query\":\"jacket\",\"type\":\"best_fields\",\"operator\" : \"and\"," +
//                "\"fields\":[ \"product_name^2\", \"brand_name^1\", \"keyword^1\" ]}}," +
//                "\"from\" : 0,\"size\" : 10," +
//                "\"sort\" : [{\"sale_price\" : \"asc\",\"sale_per\" : \"desc\"}]," +
//                "\"highlight\": {\"fields\" : {\"product_name\" : {},\"brand_name\": {}}}}";

        String urlPart = "http://localhost:9200/shop/okmall/_search?source=";
        String queryPart = String.format("{\"query\" : {\"multi_match\": {\"query\":\"%s\"," +
                "\"type\":\"best_fields\",\"operator\" : \"and\",", searchQuery);
        String searchFieldPart = "\"fields\":[ \"product_name^2\", \"brand_name^1\", \"keyword^1\" ]}},";
        String fromSizePart = String.format("\"from\" : %s,\"size\" : %s,", from, size);
        String sortPart = "\"sort\" : [{\"sale_price\" : \"asc\",\"sale_per\" : \"desc\"}],";
        String highlightPart = "\"highlight\": {\"fields\" : {\"product_name\" : {},\"brand_name\": {}}}}";

        StringBuilder sb = new StringBuilder(urlPart);
        sb.append(URLEncoder.encode(queryPart, "UTF-8"));
        sb.append(URLEncoder.encode(searchFieldPart,"UTF-8"));
        sb.append(URLEncoder.encode(fromSizePart,"UTF-8"));
        sb.append(URLEncoder.encode(sortPart,"UTF-8"));
        sb.append(URLEncoder.encode(highlightPart,"UTF-8"));

        searchQueryParam = sb.toString();
    }

    public static void main(String[] args) {
        String query = "자켓";

        String urlPart = "http://localhost:9200/shop/okmall/_search?source=";
        String queryPart = String.format("{\"query\" : {\"multi_match\": {\"query\":\"%s\"," +
                "\"type\":\"best_fields\",\"operator\" : \"and\",", query);
        String searchFieldPart = "\"fields\":[ \"product_name^2\", \"brand_name^1\", \"keyword^1\" ]}},";
        String fromSizePart = String.format("\"from\" : %d,\"size\" : %d,", 0, 10);
        String sortPart = "\"sort\" : [{\"sale_price\" : \"asc\",\"sale_per\" : \"desc\"}],";
        String highlightPart = "\"highlight\": {\"fields\" : {\"product_name\" : {},\"brand_name\": {}}}}";

        StringBuilder sb = new StringBuilder(urlPart);
        sb.append(queryPart);
        sb.append(searchFieldPart);
        sb.append(fromSizePart);
        sb.append(sortPart);
        sb.append(highlightPart);

        System.out.println(sb.toString());

    }
}
