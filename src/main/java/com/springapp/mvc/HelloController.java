package com.springapp.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import search.QueryProcessor;
import search.SearchResult;
import search.SearchResultItem;
import search.SearchES;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Vector;

@Controller
@RequestMapping("/")
public class HelloController {
	@RequestMapping(method = RequestMethod.GET)
	public String printWelcome(ModelMap model) throws Exception {

		model.addAttribute("message", "Hello world!");

		return "hello";
	}

	@RequestMapping("/search")
	public String searchES(HttpServletRequest request, ModelMap modelMap) throws Exception {
		QueryProcessor qp = new QueryProcessor();
		SearchResult sr = new SearchResult();
		SearchES se = new SearchES();

		// make search param...
		qp.paramParser(request);
		qp.makeQueryUriParam();
		se.setCrawlUrl(qp.getSearchQueryParam());
		se.setCrawlEncoding("utf-8");

		// searching...
		se.search();

		// parsing result...
		sr = se.getSearchResult(se.getCrawlData());

		// make page navigation...
		HashMap<String, Object> pageMap = new HashMap<String, Object>();
		pageMap = se.makePageNavigate(qp.getFrom(), qp.getSize(), sr.getSearchResultHeader().getListCount());

		modelMap.addAttribute("searchList", sr.getSearchResultItems());
		modelMap.addAttribute("pageMap", pageMap);
		modelMap.addAttribute("title","Good Luck!");
		modelMap.addAttribute("searchTotalCount",sr.getSearchResultHeader().getTotalResultCount());
		modelMap.addAttribute("searchListCount",sr.getSearchResultHeader().getListCount());

		modelMap.addAttribute("from",qp.getFrom());
		modelMap.addAttribute("size",qp.getSize());
		modelMap.addAttribute("query",qp.getSearchQuery());
		modelMap.addAttribute("originalQuery", qp.getOriginalQuery());

		return "search";
	}


    @RequestMapping("/summary")
    public String search2(HttpServletRequest request, ModelMap modelMap) throws Exception {
        QueryProcessor qp = new QueryProcessor();
        SearchResult sr = new SearchResult();
        SearchES se = new SearchES();

        // make search param...
        qp.paramParser(request);

        // make query string...
        qp.makeQueryJsonParam();

        se.setCrawlUrl(qp.getSearchQueryParam());
        se.setCrawlEncoding("utf-8");

        // searching...
        se.search();

        // parsing result...
        sr = se.getSearchResult(se.getCrawlData());

        // make page navigation...
        HashMap<String, Object> pageMap = new HashMap<String, Object>();
        pageMap = se.makePageNavigate(qp.getFrom(), qp.getSize(), sr.getSearchResultHeader().getListCount());

        modelMap.addAttribute("searchList", sr.getSearchResultItems());
        modelMap.addAttribute("pageMap", pageMap);
        modelMap.addAttribute("title","Good Luck!");
        modelMap.addAttribute("searchTotalCount",sr.getSearchResultHeader().getTotalResultCount());
        modelMap.addAttribute("searchListCount",sr.getSearchResultHeader().getListCount());

        modelMap.addAttribute("from",qp.getFrom());
        modelMap.addAttribute("size",qp.getSize());
        modelMap.addAttribute("query",qp.getSearchQuery());
        modelMap.addAttribute("originalQuery", qp.getOriginalQuery());

        return "search";
    }
}