package search;

import org.apache.log4j.Logger;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;

/**
 * Created by baeonejune on 15. 2. 21..
 */
public class RequestParam {
    private static Logger logger = Logger.getLogger(RequestParam.class.getName());
    private String from;
    private String size;
    private String sortField;
    private String sortOption;
    private String operator;
    private String searchType;
    private String originalQuery;
    private String displayType;
    private String searchQuery;
    private String searchUrlParam;
    private HashMap<String, Object> queryParamList;
    private static final String prefixUrl = "http://localhost:9200/shop/okmall/_search?pretty=true&";

    public static Logger getLogger() {
        return logger;
    }

    public static void setLogger(Logger logger) {
        RequestParam.logger = logger;
    }

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

    public String getSortField() {
        return sortField;
    }

    public void setSortField(String sortField) {
        this.sortField = sortField;
    }

    public String getSortOption() {
        return sortOption;
    }

    public void setSortOption(String sortOption) {
        this.sortOption = sortOption;
    }

    public String getOperator() {
        return operator;
    }

    public void setOperator(String operator) {
        this.operator = operator;
    }

    public String getSearchType() {
        return searchType;
    }

    public void setSearchType(String searchType) {
        this.searchType = searchType;
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

    public HashMap<String, Object> getQueryParamList() {
        return queryParamList;
    }

    public void setQueryParamList(HashMap<String, Object> queryParamList) {
        this.queryParamList = queryParamList;
    }

    public static String getPrefixUrl() {
        return prefixUrl;
    }

    public String getSearchUrlParam() {
        return searchUrlParam;
    }

    public void setSearchUrlParam(String searchUrlParam) {
        this.searchUrlParam = searchUrlParam;
    }

    public String getDisplayType() {
        return displayType;
    }

    public void setDisplayType(String displayType) {
        this.displayType = displayType;
    }

    public void paramParser(HttpServletRequest request) throws  Exception {
        from = request.getParameter("from");
        size = request.getParameter("size");
        sortField = request.getParameter("sort_field");
        sortOption = request.getParameter("sort_option");
        operator = request.getParameter("operator");
        searchType = request.getParameter("search_type");
        displayType = request.getParameter("display_type");
        String q = request.getParameter("query");
        if (q!=null) {
            originalQuery = new String(q.getBytes("ISO-8859-1"),"UTF-8");
            //originalQuery = new String(request.getParameter("query").getBytes("ISO-8859-1"), "UTF-8");
        }

        requestParamValidator();

        logger.info(" original query : " + originalQuery);
    }


    public void requestParamValidator() {
        if (from==null) from="0";
        if (size==null) size="20";

        if (sortField==null)
            sortField="";
        else {
            if (!"sale_price".equals(sortField) && !"sale_per".equals(sortField)) {
                sortField = "";
                logger.warn("sort field is : " + sortField);
            }
        }

        if (sortOption==null)
            sortOption="";
        else {
            if (!"asc".equals(sortOption) && !"desc".equals(sortOption)) {
                sortOption = "";
                logger.warn("sort option is : " + sortOption);
            }
        }

        if (operator==null)
            operator="and";
        else {
            if (!"and".equals(operator) && !"or".equals(operator)) {
                operator = "and";
                logger.warn("operator is : " + operator);
            }
        }

        if (displayType==null)
            displayType="0";
        else {
            if (!"0".equals(displayType) && !"1".equals(displayType)) {
                operator = "0";
                logger.warn("display type is : " + displayType);
            }
        }

        if (searchType==null)
            searchType="best_fields";
        else {
            if (!"best_fields".equals(searchType) && !"most_fields".equals(searchType)
                    && !"cross_fields".equals(searchType)) {
                searchType = "best_fields";
                logger.warn("search type is : " + searchType);
            }
        }

        if (originalQuery==null) {
            originalQuery = "*";
            searchQuery = originalQuery;
        }
        else {
            searchQuery = originalQuery;
        }
    }
}
