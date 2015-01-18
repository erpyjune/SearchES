package search;

import javax.servlet.http.HttpServletRequest;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;

/**
 * Created by baeonejune on 15. 1. 13..
 */
public class QueryProcessor {
    private String from;
    private String size;
    private String originalQuery;
    private String searchQuery;
    private String searchQueryParam;
    private HashMap<String, Object> queryParamList;

    private final String prefixUrl = "http://localhost:9200/shop/okmall/_search?";


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

    public void paramParser(HttpServletRequest request) throws  Exception {
        String from = request.getParameter("from");
        String size = request.getParameter("size");
        String orgQuery = new String(request.getParameter("query").getBytes("ISO-8859-1"), "UTF-8");
        if (orgQuery==null) {
            orgQuery = "*";
        }

        String searchQuery = URLEncoder.encode(orgQuery, "UTF-8");
        if (from==null)  from = "0";
        if (size==null)  size = "10";

        this.from = from;
        this.size = size;
        this.originalQuery = orgQuery;
        this.searchQuery = searchQuery;
    }

    public void makeQueryParam() throws Exception {
        StringBuilder sb = new StringBuilder();
        sb.append(prefixUrl);
        sb.append("from="+from);
        sb.append("&size="+size);
        sb.append("&q="+searchQuery);

        searchQueryParam = sb.toString();
    }
}
