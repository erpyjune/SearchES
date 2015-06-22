package search;

import org.apache.commons.codec.binary.StringUtils;
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

    private String from="0";
    private String size="20";
    private String sortField=null;
    private String sortOption=null;
    private String operator="or";
    private String type="best_fields";
    private String originalQuery;
    private String searchQuery;
    private String searchQueryParam;
    private HashMap<String, Object> queryParamList;

    private final String prefixUrl = "http://summarynode.cafe24.com:9200/shop/okmall/_search?pretty=true&";


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

    public String getSortField() {
        return sortField;
    }

    public void setSortField(String sortField) {
        this.sortField = sortField;
    }

    public static Logger getLogger() {
        return logger;
    }

    public static void setLogger(Logger logger) {
        QueryProcessor.logger = logger;
    }

    public String getOperator() {
        return operator;
    }

    public void setOperator(String operator) {
        this.operator = operator;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }


    /////////////////////////////////////////////////////////////////////////
    public void makeQueryJsonParam(RequestParam rp) throws Exception {
//        String str = "http://localhost:9200/shop/okmall/_search?source=" +
//                "{\"query\" : {\"multi_match\": {\"query\":\"jacket\",\"type\":\"best_fields\",\"operator\" : \"and\"," +
//                "\"fields\":[ \"product_name^2\", \"brand_name^1\", \"keyword^1\" ]}}," +
//                "\"from\" : 0,\"size\" : 10," +
//                "\"sort\" : [{\"sale_price\" : \"asc\",\"sale_per\" : \"desc\"}]," +
//                "\"highlight\": {\"fields\" : {\"product_name\" : {},\"brand_name\": {}}}}";

        String queryPart="";
        String typePart="";
        String operatorPart="";
        String searchAnalyzerPart="";
        String searchFieldPart="";
        String fromSizePart="";
        String sortPart="";
        String highlightPart="";
        String queryString="";

        String urlPart = "http://summarynode.cafe24.com:9200/shop/okmall/_search?source=";
//        String urlPart = "http://summarynode.com:9200/shop/okmall/_search?source=";

        StringBuilder sb = new StringBuilder(urlPart);

        //////////////////////////////////////////////////////////////////////////
        // 카테고리 검색일 경우
        // cate1, cate2
        if ("category".equals(rp.getCategorySearchType())) {
            // cate1, cate2 search
            if (rp.getCateName1().length()>0 && rp.getCateName2().length()>0) {
                queryString = "{\n" +
                        "  \"query\": {" +
                        "    \"bool\": {" +
                        "      \"must\": [" +
                        "        { \"match\": { \"cate1\": \""+rp.getCateName1()+"\" }}," +
                        "        { \"match\": { \"cate2\": \""+rp.getCateName2()+"\" }}" +
                        "      ]" +
                        "    }" +
                        "  }," +
                        "  \"from\" : "+rp.getFrom()+"," +
                        "  \"size\" : "+rp.getSize()+"," +
                        "  \"sort\" : {" +
                        "          \"sale_price\" : \"asc\"" +
                        "   }" +
                        "}";
            }
            // cate1 search
            else if (rp.getCateName1().length()>0 && rp.getCateName2().length()==0) {
                queryString = "{\n" +
                        "  \"query\": {" +
                        "    \"bool\": {" +
                        "      \"must\": [" +
                        "        { \"match\": { \"cate1\": \""+rp.getCateName1()+"\" }}" +
                        "      ]" +
                        "    }" +
                        "  }," +
                        "  \"from\" : "+rp.getFrom()+"," +
                        "  \"size\" : "+rp.getSize()+"," +
                        "  \"sort\" : {" +
                        "          \"sale_price\" : \"asc\"" +
                        "   }" +
                        "}";
            }
            // 이 경우 normal search 를 한다
            else {
                queryPart = String.format("{\"query\" : {\"multi_match\": {\"query\":\"%s\",", rp.getSearchQuery());
                typePart = String.format("\"type\":\"%s\",", rp.getSearchType());
                operatorPart = String.format("\"operator\" : \"%s\",", rp.getOperator());
                searchAnalyzerPart = String.format("\"analyzer\" : \"%s\",", "my_search_analyzer");
                searchFieldPart = "\"fields\":[ \"product_name^10\", \"brand_name^1\", \"keyword^5\" ]}},";
                fromSizePart = String.format("\"from\" : %s,\"size\" : %s,", rp.getFrom(), rp.getSize());
                sortPart = "";
                if (!rp.getSortField().isEmpty() && !rp.getSortOption().isEmpty()) {
//            String sortPart = "\"sort\" : [{\"sale_price\" : \"asc\",\"sale_per\" : \"desc\"}],";
                    sortPart = String.format("\"sort\" : [{\"%s\" : \"%s\"}],", rp.getSortField(), rp.getSortOption());
                }
                highlightPart = "\"highlight\": {\"fields\" : {\"product_name\" : {},\"brand_name\": {}}}}";

                sb.append(URLEncoder.encode(queryPart, "UTF-8"));
                sb.append(URLEncoder.encode(typePart, "UTF-8"));
                sb.append(URLEncoder.encode(operatorPart, "UTF-8"));
                sb.append(URLEncoder.encode(searchAnalyzerPart, "UTF-8"));
                sb.append(URLEncoder.encode(searchFieldPart,"UTF-8"));
                sb.append(URLEncoder.encode(fromSizePart,"UTF-8"));
                if (!rp.getSortField().isEmpty() && !rp.getSortOption().isEmpty()) {
                    sb.append(URLEncoder.encode(sortPart,"UTF-8"));
                }
                sb.append(URLEncoder.encode(highlightPart,"UTF-8"));

                // 최종 검색할 url 셋팅.
                rp.setSearchUrlParam(sb.toString());
            }

        } else { // normal 검색일 경우
            queryPart = String.format("{\"query\" : {\"multi_match\": {\"query\":\"%s\",", rp.getSearchQuery());
            typePart = String.format("\"type\":\"%s\",", rp.getSearchType());
            operatorPart = String.format("\"operator\" : \"%s\",", rp.getOperator());
            searchAnalyzerPart = String.format("\"analyzer\" : \"%s\",", "my_search_analyzer");
            searchFieldPart = "\"fields\":[ \"product_name^10\", \"brand_name^1\", \"keyword^5\" ]}},";
            fromSizePart = String.format("\"from\" : %s,\"size\" : %s,", rp.getFrom(), rp.getSize());
            sortPart = "";
            if (!rp.getSortField().isEmpty() && !rp.getSortOption().isEmpty()) {
//            String sortPart = "\"sort\" : [{\"sale_price\" : \"asc\",\"sale_per\" : \"desc\"}],";
                sortPart = String.format("\"sort\" : [{\"%s\" : \"%s\"}],", rp.getSortField(), rp.getSortOption());
            }
            highlightPart = "\"highlight\": {\"fields\" : {\"product_name\" : {},\"brand_name\": {}}}}";

            sb.append(URLEncoder.encode(queryPart, "UTF-8"));
            sb.append(URLEncoder.encode(typePart, "UTF-8"));
            sb.append(URLEncoder.encode(operatorPart, "UTF-8"));
            sb.append(URLEncoder.encode(searchAnalyzerPart, "UTF-8"));
            sb.append(URLEncoder.encode(searchFieldPart,"UTF-8"));
            sb.append(URLEncoder.encode(fromSizePart,"UTF-8"));
            if (!rp.getSortField().isEmpty() && !rp.getSortOption().isEmpty()) {
                sb.append(URLEncoder.encode(sortPart,"UTF-8"));
            }
            sb.append(URLEncoder.encode(highlightPart,"UTF-8"));

            // 최종 검색할 url 셋팅.
            rp.setSearchUrlParam(sb.toString());
        }
    }


    ////////////////////////////////////////////////////////////////////////////////////////////
    public HashMap<String, Object> makePageNavigate(RequestParam rp, SearchResult sr) throws Exception {
        HashMap<String, Object> map = new HashMap<String, Object>();

        int intFrom = Integer.parseInt(rp.getFrom());
        int intSize = Integer.parseInt(rp.getSize());

        // for next page...
        int nextFrom = intFrom + intSize;
        map.put("nextPageFrom", nextFrom);
        map.put("nextPageSize", intSize);

        // for prev page
        int prevFrom=0;
        if (intFrom > 0) {
            prevFrom = intFrom - intSize;
        }

        // for prev page...
        map.put("prevPageFrom", prevFrom);
        map.put("prevPageSize", intSize);

        // current page...
        map.put("currPageFrom", rp.getFrom());
        map.put("currPageSize", rp.getSize());

        int showCount = intFrom + intSize;
        if (sr.getSearchResultHeader().getTotalResultCount() <= showCount) {
            map.put("nextPageYN", "0");
        }
        else {
            map.put("nextPageYN", "1");
        }

        return map;
    }


    ////////////////////////////////////////////////////////////////////////////////////////////
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
