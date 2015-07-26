package search;

import org.apache.log4j.Logger;

import java.net.URLEncoder;
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
        String queryPart;
        String typePart;
        String matchThredshold;
        String operatorPart;
        String searchAnalyzerPart;
        String searchFieldPart;
        String fromSizePart;
        String sortPart="";
        String highlightPart;

        String urlPart = "http://summarynode.cafe24.com:9200/shop/okmall/_search?source=";
//        String urlPart = "http://summarynode.com:9200/shop/okmall/_search?source=";

        queryPart             = String.format("{\"query\" : {\"multi_match\": {\"query\":\"%s\",", rp.getSearchQuery());
        typePart              = String.format("\"type\":\"%s\",", rp.getSearchType());
        matchThredshold       = String.format("\"minimum_should_match\":\"\"100%\"\",");
        operatorPart          = String.format("\"operator\" : \"%s\",", rp.getOperator());
        searchAnalyzerPart    = String.format("\"analyzer\" : \"%s\",", "my_search_analyzer");
        searchFieldPart       = "\"fields\":[ \"product_name^10\", \"brand_name^1\", \"keyword^5\" ]}},";
        fromSizePart          = String.format("\"from\" : %s,\"size\" : %s,", rp.getFrom(), rp.getSize());
        if (!rp.getSortField().isEmpty() && !rp.getSortOption().isEmpty()) {
//            String sortPart = "\"sort\" : [{\"sale_price\" : \"asc\",\"sale_per\" : \"desc\"}],";
            sortPart = String.format("\"sort\" : [{\"%s\" : \"%s\"}],",rp.getSortField(), rp.getSortOption());
        }

        highlightPart = "\"highlight\": {\"fields\" : {\"product_name\" : {},\"brand_name\": {}}}}";

        StringBuilder sb = new StringBuilder(urlPart);
        sb.append(URLEncoder.encode(queryPart, "UTF-8"));
        sb.append(URLEncoder.encode(typePart, "UTF-8"));
        sb.append(URLEncoder.encode(matchThredshold, "UTF-8"));
        sb.append(URLEncoder.encode(operatorPart, "UTF-8"));
        sb.append(URLEncoder.encode(searchAnalyzerPart, "UTF-8"));
        sb.append(URLEncoder.encode(searchFieldPart,"UTF-8"));
        sb.append(URLEncoder.encode(fromSizePart,"UTF-8"));
        if (!rp.getSortField().isEmpty() && !rp.getSortOption().isEmpty()) {
            sb.append(URLEncoder.encode(sortPart,"UTF-8"));
        }
        sb.append(URLEncoder.encode(highlightPart, "UTF-8"));

        // 최종 검색할 url 셋팅.
        rp.setSearchUrlParam(sb.toString());
        logger.info(" QueryString : " + sb.toString());
    }


    ///////////////////////////////////////////////////////////////////////////////
    public void makeQueryJsonParamForCateSearch(RequestParam rp) throws Exception {
        String cate1Query="", cate2Query="", cate3Query="";
        String queryString="";
        String urlPart = "http://summarynode.cafe24.com:9200/shop/okmall/_search?source=";
//        String urlPart = "http://summarynode.com:9200/shop/okmall/_search?source=";


        if (rp.getSortField().length()>0 && "asc".equals(rp.getSortOption())) {
            cate1Query = "{" +
                    "\"query\":{" +
                    "\"bool\":{" +
                    "\"must\":[" +
                    "{\"match\":{\"cate1\":\"%s\"}}" +
                    "]" +
                    "}" +
                    "}," +
                    "\"from\":%s," +
                    "\"sort\" : [{\"sale_price\" : \"asc\",\"sale_per\" : \"desc\"}]," +
                    "\"size\":%s" +
                    "}";
        } else {
            cate1Query = "{" +
                    "\"query\":{" +
                    "\"bool\":{" +
                    "\"must\":[" +
                    "{\"match\":{\"cate1\":\"%s\"}}" +
                    "]" +
                    "}" +
                    "}," +
                    "\"from\":%s," +
//                    "\"sort\" : [{\"sale_price\" : \"asc\",\"sale_per\" : \"desc\"}]," +
                    "\"size\":%s" +
                    "}";
        }


        if (rp.getSortField().length()>0 && "asc".equals(rp.getSortOption())) {
            cate2Query = "{" +
                    "\"query\":{" +
                    "\"bool\":{" +
                    "\"must\": [" +
                    "{\"match\":{\"cate1\":\"%s\"}}," +
                    "{\"match\":{\"cate2\":\"%s\"}}" +
                    "]" +
                    "}" +
                    "}," +
                    "\"from\" : %s," +
                    "\"sort\" : [{\"sale_price\" : \"asc\",\"sale_per\" : \"desc\"}]," +
                    "\"size\" : %s" +
                    "}";
        } else {
            cate2Query = "{" +
                    "\"query\":{" +
                    "\"bool\":{" +
                    "\"must\": [" +
                    "{\"match\":{\"cate1\":\"%s\"}}," +
                    "{\"match\":{\"cate2\":\"%s\"}}" +
                    "]" +
                    "}" +
                    "}," +
                    "\"from\" : %s," +
//                    "\"sort\" : [{\"sale_price\" : \"asc\",\"sale_per\" : \"desc\"}]," +
                    "\"size\" : %s" +
                    "}";
        }

        if (rp.getSortField().length()>0 && "asc".equals(rp.getSortOption())) {
            cate3Query = "{" +
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
                    "\"sort\" : [{\"sale_price\" : \"asc\",\"sale_per\" : \"desc\"}]," +
                    "\"size\" : %s" +
                    "}";
        } else {
            cate3Query = "{" +
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
//                    "\"sort\" : [{\"sale_price\" : \"asc\",\"sale_per\" : \"desc\"}]," +
                    "\"size\" : %s" +
                    "}";
        }


        if (rp.getCateName1().length()>0) {
            // cate1 ~ 3 모두 들어 있엉.
            if (rp.getCateName2().length()>0 && rp.getCateName3().length()>0) {
                queryString = String.format(
                        cate3Query, rp.getCateName1(), rp.getCateName2(), rp.getCateName3(),rp.getFrom(), rp.getSize());
            }
            // cate1, cate2 만 있어
            else if (rp.getCateName2().length()>0 && rp.getCateName3().length()==0) {
                queryString = String.format(
                        cate2Query, rp.getCateName1(), rp.getCateName2(), rp.getFrom(), rp.getSize());
            }
            else { // cate1만 있다.
                queryString = String.format(
                        cate1Query, rp.getCateName1(), rp.getFrom(), rp.getSize());
            }
        }
        else {
            logger.error(String.format(" Category search param error : cate1(%s), cate2(%s), cate3(%s) !!",
                    rp.getCateName1(), rp.getCateName2(), rp.getCateName3()));
            throw new RuntimeException();
        }

        // 최종 검색할 url 셋팅.
        rp.setSearchUrlParam(urlPart + URLEncoder.encode(queryString, "UTF-8"));
//        rp.setSearchUrlParam(urlPart + queryString);
//        logger.info(cate1Query);
        logger.info(" queryString : " + queryString);
        logger.info(String.format("cate1(%s)", rp.getCateName1()));
        logger.info(String.format("cate2(%s)", rp.getCateName2()));
        logger.info(String.format("cate3(%s)", rp.getCateName3()));
//        logger.info(" Original : " + urlPart + queryString);
//        logger.info(" Encoding : " + rp.getSearchUrlParam());
    }


    ///////////////////////////////////////////////////////////////////////////////
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
    public static void main(String[] args) throws Exception {
        SearchES se = new SearchES();
        String urlPart = "http://summarynode.cafe24.com:9200/shop/okmall/_search?source=";
        String cate2Query ="{" +
                "\"query\":{" +
                "\"bool\":{" +
                "\"must\": [" +
                "{\"match\":{\"cate1\":\"001\"}}," +
                "{\"match\":{\"cate2\":\"003\"}}" +
                "]" +
                "}" +
                "}," +
                "\"from\" : 0," +
                "\"size\" : 20" +
                "}";

        se.setCrawlUrl(urlPart + URLEncoder.encode(cate2Query,"UTF-8"));
        se.setCrawlEncoding("utf-8");

        // searching...
        se.search();

        System.out.println(se.getCrawlData());
        System.out.println("end!!");
    }
}
