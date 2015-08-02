package search;

import org.apache.log4j.Logger;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;

/**
 * Created by baeonejune on 15. 2. 21..
 */
public class RequestParam {
    private static Logger logger = Logger.getLogger(RequestParam.class.getName());
    private String from="";
    private String size="";
    private String cp="";
    private String sortField="";
    private String sortOption="";
    private String operator="";
    private String searchType=""; // best_fields, cross_fields, most_fields
    private String originalQuery="";
    private String displayType="";
    private String searchQuery="";
    private String searchUrlParam="";
    private String categorySearchType="";
    private String cateName1="";
    private String cateName2="";
    private String cateName3="";
    private HashMap<String, Object> queryParamList;
    private static final String prefixUrl = "http://summarynode.cafe24.com:9200/shop/okmall/_search?pretty=true&";

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

    public String getCp() {
        return cp;
    }

    public void setCp(String cp) {
        this.cp = cp;
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

    public String getCategorySearchType() {
        return categorySearchType;
    }

    public void setCategorySearchType(String categorySearchType) {
        this.categorySearchType = categorySearchType;
    }

    public String getCateName1() {
        return cateName1;
    }

    public void setCateName1(String cateName1) {
        this.cateName1 = cateName1;
    }

    public String getCateName2() {
        return cateName2;
    }

    public void setCateName2(String cateName2) {
        this.cateName2 = cateName2;
    }

    public String getCateName3() {
        return cateName3;
    }

    public void setCateName3(String cateName3) {
        this.cateName3 = cateName3;
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
        if (from==null) from = "0";

        String sss = request.getQueryString();
        size = request.getParameter("size");
        cp = request.getParameter("cp");
        sortField = request.getParameter("sort_field");
        sortOption = request.getParameter("sort_option");
        operator = request.getParameter("operator");
        searchType = request.getParameter("search_type");
        displayType = request.getParameter("display_type");
        categorySearchType = request.getParameter("category_search_type");
        cateName1 = request.getParameter("cate1");
        cateName2 = request.getParameter("cate2");
        cateName3 = request.getParameter("cate3");
        String q = request.getParameter("query");
        if (q!=null) {
//            originalQuery = new String(q.getBytes("ISO-8859-1"),"UTF-8");
            originalQuery = q;
//            originalQuery = new String(request.getParameter("query").getBytes("ISO-8859-1"), "UTF-8");
        }

        ///////////////////////////////////////
        // parameter valid checker.
        requestParamValidator();

        logger.info(" original query : " + originalQuery);
        logger.info(" getQueryString : " + request.getQueryString());
        logger.info(" category_search_type : " + categorySearchType);
        logger.info(" cate1 : " + cateName1);
        logger.info(" cate2 : " + cateName2);
        logger.info(" cate3 : " + cateName3);
        logger.info(" cp : " + cp);
        logger.info(" =================================================");
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

        if (cp==null) cp="";

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

        if (searchType==null) {
//            searchType = "best_fields";
            searchType = "cross_fields";
        }
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

        if (cateName1==null) {
            cateName1="";
        }

        if (cateName2==null) {
            cateName2="";
        }

        if (cateName3==null) {
            cateName3="";
        }


        // 카테고리 검색을 할지 일반 검색을 할지 이 parameter로 정해진다.
        if (categorySearchType==null) {
            categorySearchType="normal";
        }
        else {
            if (!"normal".equals(categorySearchType) && !"category".equals(categorySearchType) ) {
                categorySearchType = "normal";
            } else if ("category".equals(categorySearchType)) {
                // TODO :: cate1, cate2 파라메터에 대해서 valid check 필요.
            }
        }
    }
}
