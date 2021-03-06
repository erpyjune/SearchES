package com.springapp.mvc;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import search.*;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Vector;

@Controller
@RequestMapping("/")
public class HelloController {

    private static Logger logger = Logger.getLogger(HelloController.class.getName());

    @RequestMapping(method = RequestMethod.GET)
    public String index(ModelMap model) throws Exception {

        model.addAttribute("message", "Hello world!");

        return "hello";
    }

    @RequestMapping("/summary")
    public String summary(HttpServletRequest request, ModelMap modelMap) throws Exception {
        QueryProcessor qp = new QueryProcessor();
        RequestParam rp = new RequestParam();
        HashMap<String, Object> pageMap;
        SearchResult sr;
        SearchES se = new SearchES();

        // request param extract..
        rp.paramParser(request);

        // make query string...
        qp.makeQueryJsonParam(rp);

        se.setCrawlUrl(rp.getSearchUrlParam());
        se.setCrawlEncoding("utf-8");

        // searching...
        se.search();

        // parsing result...
        sr = se.getSearchResult(se.getCrawlData());

        // make page navigation...
        pageMap = qp.makePageNavigate(rp, sr);

        modelMap.addAttribute("searchList", sr.getSearchResultItems());
        modelMap.addAttribute("pageMap", pageMap);
        modelMap.addAttribute("title","Good Luck!");
        modelMap.addAttribute("searchTotalCount",sr.getSearchResultHeader().getTotalResultCount());
        modelMap.addAttribute("searchListCount",sr.getSearchResultHeader().getListCount());

        modelMap.addAttribute("displayType", rp.getDisplayType());
        modelMap.addAttribute("sortField", rp.getSortField());
        modelMap.addAttribute("sortOption", rp.getSortOption());
        modelMap.addAttribute("operator", rp.getOperator());

        modelMap.addAttribute("from",rp.getFrom());
        modelMap.addAttribute("size",rp.getSize());
        modelMap.addAttribute("query",rp.getSearchQuery());
        modelMap.addAttribute("originalQuery", rp.getOriginalQuery());

        return "search";
    }

    @RequestMapping("/search")
    public String pinter(HttpServletRequest request, ModelMap modelMap) throws Exception {
        QueryProcessor qp = new QueryProcessor();
        RequestParam rp = new RequestParam();
        SearchResult sr;
        HashMap<String, Object> pageMap;
        SearchES se = new SearchES();

        // request param extract..
        rp.paramParser(request);

        // make query string...
        qp.makeQueryParam(rp);

        se.setCrawlUrl(rp.getSearchUrlParam());
        se.setCrawlEncoding("utf-8");

        // searching...
        se.search();

        // parsing result...
        sr = se.getSearchResult(se.getCrawlData());

        // make page navigation...
        pageMap = qp.makePageNavigate(rp, sr);

        modelMap.addAttribute("searchList", sr.getSearchResultItems());
        modelMap.addAttribute("pageMap", pageMap);
        modelMap.addAttribute("title","Good Luck!");
        modelMap.addAttribute("searchTotalCount",sr.getSearchResultHeader().getTotalResultCount());
        modelMap.addAttribute("searchListCount",sr.getSearchResultHeader().getListCount());

        modelMap.addAttribute("displayType", rp.getDisplayType());
        modelMap.addAttribute("sortField", rp.getSortField());
        modelMap.addAttribute("sortOption", rp.getSortOption());
        modelMap.addAttribute("operator", rp.getOperator());

        modelMap.addAttribute("from",rp.getFrom());
        modelMap.addAttribute("size",rp.getSize());
        modelMap.addAttribute("query",rp.getSearchQuery());
        modelMap.addAttribute("originalQuery", rp.getOriginalQuery());

        modelMap.addAttribute("category_search_type", rp.getCategorySearchType());
        modelMap.addAttribute("cate1", rp.getCateName1());
        modelMap.addAttribute("cate2", rp.getCateName2());
        modelMap.addAttribute("cate3", rp.getCateName3());
        modelMap.addAttribute("cp", rp.getCp());
        modelMap.addAttribute("price_start", rp.getPriceStart());
        modelMap.addAttribute("price_end", rp.getPriceEnd());

        logger.info(sr.getSearchResultItems().toString());

        return "new1/pinter";
    }

    @RequestMapping("/pin_ajax")
    public String pinAjax(HttpServletRequest request, ModelMap modelMap) throws Exception {
        QueryProcessor qp = new QueryProcessor();
        RequestParam rp = new RequestParam();
        HashMap<String, Object> pageMap;
        SearchES se = new SearchES();
        SearchResult sr;

        // request param extract..
        rp.paramParser(request);

        // make query string...
        qp.makeQueryParam(rp);

        se.setCrawlUrl(rp.getSearchUrlParam());
        se.setCrawlEncoding("utf-8");

        // searching...
        se.search();

        // parsing result...
        sr = se.getSearchResult(se.getCrawlData());

        // make page navigation...
        pageMap = qp.makePageNavigate(rp, sr);

        modelMap.addAttribute("searchList", sr.getSearchResultItems());
        modelMap.addAttribute("pageMap", pageMap);
        modelMap.addAttribute("title","Good Luck!");
        modelMap.addAttribute("searchTotalCount",sr.getSearchResultHeader().getTotalResultCount());
        modelMap.addAttribute("searchListCount",sr.getSearchResultHeader().getListCount());

        modelMap.addAttribute("displayType", rp.getDisplayType());
        modelMap.addAttribute("sortField", rp.getSortField());
        modelMap.addAttribute("sortOption", rp.getSortOption());
        modelMap.addAttribute("operator", rp.getOperator());

        modelMap.addAttribute("from",rp.getFrom());
        modelMap.addAttribute("size",rp.getSize());
        modelMap.addAttribute("query",rp.getSearchQuery());
        modelMap.addAttribute("originalQuery", rp.getOriginalQuery());

        modelMap.addAttribute("category_search_type", rp.getCategorySearchType());
        modelMap.addAttribute("cate1", rp.getCateName1());
        modelMap.addAttribute("cate2", rp.getCateName2());
        modelMap.addAttribute("cate3", rp.getCateName3());
        modelMap.addAttribute("cp", rp.getCp());
        modelMap.addAttribute("price_start", rp.getPriceStart());
        modelMap.addAttribute("price_end", rp.getPriceEnd());

        logger.info(sr.getSearchResultItems().toString());

        return "new1/pinter_ajax";
    }

    @RequestMapping("/pinter2")
    public String search3(HttpServletRequest request, ModelMap modelMap) throws Exception {
        QueryProcessor qp = new QueryProcessor();
        RequestParam rp = new RequestParam();
        SearchResult sr;
        SearchES se = new SearchES();

        // request param extract..
        rp.paramParser(request);

        // make query string...
        qp.makeQueryJsonParam(rp);

        se.setCrawlUrl(rp.getSearchUrlParam());
        se.setCrawlEncoding("utf-8");

        // searching...
        se.search();

        // parsing result...
        sr = se.getSearchResult(se.getCrawlData());

        // make page navigation...
        HashMap<String, Object> pageMap;
        pageMap = qp.makePageNavigate(rp, sr);

        modelMap.addAttribute("searchList", sr.getSearchResultItems());
        modelMap.addAttribute("pageMap", pageMap);
        modelMap.addAttribute("title","Good Luck!");
        modelMap.addAttribute("searchTotalCount",sr.getSearchResultHeader().getTotalResultCount());
        modelMap.addAttribute("searchListCount",sr.getSearchResultHeader().getListCount());

        modelMap.addAttribute("displayType", rp.getDisplayType());
        modelMap.addAttribute("sortField", rp.getSortField());
        modelMap.addAttribute("sortOption", rp.getSortOption());
        modelMap.addAttribute("operator", rp.getOperator());

        modelMap.addAttribute("from",rp.getFrom());
        modelMap.addAttribute("size",rp.getSize());
        modelMap.addAttribute("query",rp.getSearchQuery());
        modelMap.addAttribute("originalQuery", rp.getOriginalQuery());

        return "new2/pinter2";
    }

    @RequestMapping("/asearch")
    public String ajaxSearch(HttpServletRequest request, ModelMap modelMap) throws Exception {
        QueryProcessor qp = new QueryProcessor();
        RequestParam rp = new RequestParam();
        HashMap<String, Object> pageMap;
        SearchES se = new SearchES();
        SearchResult sr;

        // request param extract..
        rp.paramParser(request);

        // make query string...
        qp.makeQueryJsonParam(rp);

        se.setCrawlUrl(rp.getSearchUrlParam());
        se.setCrawlEncoding("utf-8");

        // searching...
        se.search();

        // parsing result...
        sr = se.getSearchResult(se.getCrawlData());

        // make page navigation...
        pageMap = qp.makePageNavigate(rp, sr);

        modelMap.addAttribute("searchList", sr.getSearchResultItems());
        modelMap.addAttribute("pageMap", pageMap);
        modelMap.addAttribute("title","Good Luck!");
        modelMap.addAttribute("searchTotalCount",sr.getSearchResultHeader().getTotalResultCount());
        modelMap.addAttribute("searchListCount",sr.getSearchResultHeader().getListCount());

        modelMap.addAttribute("displayType", rp.getDisplayType());
        modelMap.addAttribute("sortField", rp.getSortField());
        modelMap.addAttribute("sortOption", rp.getSortOption());
        modelMap.addAttribute("operator", rp.getOperator());

        modelMap.addAttribute("from",rp.getFrom());
        modelMap.addAttribute("size",rp.getSize());
        modelMap.addAttribute("query",rp.getSearchQuery());
        modelMap.addAttribute("originalQuery", rp.getOriginalQuery());

        return "new2/search_ajax_result";
    }


    @RequestMapping("/odsearch")
    public String odsearch(HttpServletRequest request, ModelMap modelMap) throws Exception {
        QueryProcessor qp = new QueryProcessor();
        RequestParam rp = new RequestParam();
        SearchResult sr;
        HashMap<String, Object> pageMap;
        SearchES se = new SearchES();

        // request param extract..
        rp.paramParser(request);

        // make query string...
        qp.makeQueryJsonParam(rp);

        se.setCrawlUrl(rp.getSearchUrlParam());
        se.setCrawlEncoding("utf-8");

        // searching...
        se.search();

        // parsing result...
        sr = se.getSearchResult(se.getCrawlData());

        // make page navigation...
        pageMap = qp.makePageNavigate(rp, sr);

        modelMap.addAttribute("searchList", sr.getSearchResultItems());
        modelMap.addAttribute("pageMap", pageMap);
        modelMap.addAttribute("title","Good Luck!");
        modelMap.addAttribute("searchTotalCount",sr.getSearchResultHeader().getTotalResultCount());
        modelMap.addAttribute("searchListCount",sr.getSearchResultHeader().getListCount());

        modelMap.addAttribute("displayType", rp.getDisplayType());
        modelMap.addAttribute("sortField", rp.getSortField());
        modelMap.addAttribute("sortOption", rp.getSortOption());
        modelMap.addAttribute("operator", rp.getOperator());

        modelMap.addAttribute("from",rp.getFrom());
        modelMap.addAttribute("size",rp.getSize());
        modelMap.addAttribute("query",rp.getSearchQuery());
        modelMap.addAttribute("originalQuery", rp.getOriginalQuery());

        return "odsearch/main";
    }


    @RequestMapping("/odsearch_ajax")
    public String ojsearchAJAX(HttpServletRequest request, ModelMap modelMap) throws Exception {
        QueryProcessor qp = new QueryProcessor();
        RequestParam rp = new RequestParam();
        HashMap<String, Object> pageMap;
        SearchES se = new SearchES();
        SearchResult sr;

        // request param extract..
        rp.paramParser(request);

        // make query string...
        qp.makeQueryJsonParam(rp);

        se.setCrawlUrl(rp.getSearchUrlParam());
        se.setCrawlEncoding("utf-8");

        // searching...
        se.search();

        // parsing result...
        sr = se.getSearchResult(se.getCrawlData());

        // make page navigation...
        pageMap = qp.makePageNavigate(rp, sr);

        modelMap.addAttribute("searchList", sr.getSearchResultItems());
        modelMap.addAttribute("pageMap", pageMap);
        modelMap.addAttribute("title","Good Luck!");
        modelMap.addAttribute("searchTotalCount",sr.getSearchResultHeader().getTotalResultCount());
        modelMap.addAttribute("searchListCount",sr.getSearchResultHeader().getListCount());

        modelMap.addAttribute("displayType", rp.getDisplayType());
        modelMap.addAttribute("sortField", rp.getSortField());
        modelMap.addAttribute("sortOption", rp.getSortOption());
        modelMap.addAttribute("operator", rp.getOperator());

        modelMap.addAttribute("from",rp.getFrom());
        modelMap.addAttribute("size",rp.getSize());
        modelMap.addAttribute("query",rp.getSearchQuery());
        modelMap.addAttribute("originalQuery", rp.getOriginalQuery());

        return "odsearch/odsearch_ajax";
    }

    /////////////// odsearch2 ////////////////
    @RequestMapping("/odsearch2")
    public String odsearch2(HttpServletRequest request, ModelMap modelMap) throws Exception {
        QueryProcessor qp = new QueryProcessor();
        RequestParam rp = new RequestParam();
        SearchResult sr;
        HashMap<String, Object> pageMap;
        SearchES se = new SearchES();

        // request param extract..
        rp.paramParser(request);

        // make query string...
        qp.makeQueryJsonParam(rp);

        se.setCrawlUrl(rp.getSearchUrlParam());
        se.setCrawlEncoding("utf-8");

        // searching...
        se.search();

        // parsing result...
        sr = se.getSearchResult(se.getCrawlData());

        // make page navigation...
        pageMap = qp.makePageNavigate(rp, sr);

        modelMap.addAttribute("searchList", sr.getSearchResultItems());
        modelMap.addAttribute("pageMap", pageMap);
        modelMap.addAttribute("title","Good Luck!");
        modelMap.addAttribute("searchTotalCount",sr.getSearchResultHeader().getTotalResultCount());
        modelMap.addAttribute("searchListCount",sr.getSearchResultHeader().getListCount());

        modelMap.addAttribute("displayType", rp.getDisplayType());
        modelMap.addAttribute("sortField", rp.getSortField());
        modelMap.addAttribute("sortOption", rp.getSortOption());
        modelMap.addAttribute("operator", rp.getOperator());

        modelMap.addAttribute("from",rp.getFrom());
        modelMap.addAttribute("size",rp.getSize());
        modelMap.addAttribute("query",rp.getSearchQuery());
        modelMap.addAttribute("originalQuery", rp.getOriginalQuery());

        return "odsearch2/main";
    }


    @RequestMapping("/odsearch2_ajax")
    public String odsearch2AJAX(HttpServletRequest request, ModelMap modelMap) throws Exception {
        QueryProcessor qp = new QueryProcessor();
        RequestParam rp = new RequestParam();
        HashMap<String, Object> pageMap;
        SearchES se = new SearchES();
        SearchResult sr;

        // request param extract..
        rp.paramParser(request);

        // make query string...
        qp.makeQueryJsonParam(rp);

        se.setCrawlUrl(rp.getSearchUrlParam());
        se.setCrawlEncoding("utf-8");

        // searching...
        se.search();

        // parsing result...
        sr = se.getSearchResult(se.getCrawlData());

        // make page navigation...
        pageMap = qp.makePageNavigate(rp, sr);

        modelMap.addAttribute("searchList", sr.getSearchResultItems());
        modelMap.addAttribute("pageMap", pageMap);
        modelMap.addAttribute("title","Good Luck!");
        modelMap.addAttribute("searchTotalCount",sr.getSearchResultHeader().getTotalResultCount());
        modelMap.addAttribute("searchListCount",sr.getSearchResultHeader().getListCount());

        modelMap.addAttribute("displayType", rp.getDisplayType());
        modelMap.addAttribute("sortField", rp.getSortField());
        modelMap.addAttribute("sortOption", rp.getSortOption());
        modelMap.addAttribute("operator", rp.getOperator());

        modelMap.addAttribute("from",rp.getFrom());
        modelMap.addAttribute("size",rp.getSize());
        modelMap.addAttribute("query",rp.getSearchQuery());
        modelMap.addAttribute("originalQuery", rp.getOriginalQuery());

        return "odsearch2/ajax";
    }
}