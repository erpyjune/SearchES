package com.springapp.mvc;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import search.QueryProcessor;
import search.RequestParam;
import search.SearchES;
import search.SearchResult;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;

/**
 * Created by erpy on 15. 8. 30..
 */
@Controller
@RequestMapping("/vm")
public class VelocityController {
    private static Logger logger = Logger.getLogger(VelocityController.class.getName());

    @RequestMapping("/test")
    public ModelAndView test() throws Exception {
        ModelAndView mv = new ModelAndView();

        mv.setViewName("/test");
        mv.addObject("title", "This is velocity test!!");
        mv.addObject("testName1", "testName1 value is kkk!!");

        return mv;
    }

    @RequestMapping("/search")
    public ModelAndView search(HttpServletRequest request, HttpServletResponse response) throws Exception {
        ModelAndView mv = new ModelAndView();
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

        mv.addObject("searchList", sr.getSearchResultItems());
        mv.addObject("pageMap", pageMap);
        mv.addObject("title","Good Luck!");
        mv.addObject("searchTotalCount", sr.getSearchResultHeader().getTotalResultCount());
        mv.addObject("searchListCount", sr.getSearchResultHeader().getListCount());

        mv.addObject("displayType", rp.getDisplayType());
        mv.addObject("sortField", rp.getSortField());
        mv.addObject("sortOption", rp.getSortOption());
        mv.addObject("operator", rp.getOperator());

        mv.addObject("from", rp.getFrom());
        mv.addObject("size", rp.getSize());
        mv.addObject("query", rp.getSearchQuery());
        mv.addObject("originalQuery", rp.getOriginalQuery());

        mv.addObject("category_search_type", rp.getCategorySearchType());
        mv.addObject("cate1", rp.getCateName1());
        mv.addObject("cate2", rp.getCateName2());
        mv.addObject("cate3", rp.getCateName3());
        mv.addObject("cp", rp.getCp());
        mv.addObject("price_start", rp.getPriceStart());
        mv.addObject("price_end", rp.getPriceEnd());

        mv.setViewName("search01/result");

        logger.info(sr.getSearchResultItems().toString());

        return mv;
    }
}
