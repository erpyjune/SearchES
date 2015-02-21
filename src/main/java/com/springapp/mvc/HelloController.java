package com.springapp.mvc;

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
	@RequestMapping(method = RequestMethod.GET)
	public String printWelcome(ModelMap model) throws Exception {

		model.addAttribute("message", "Hello world!");

		return "hello";
	}


    @RequestMapping("/summary")
    public String search(HttpServletRequest request, ModelMap modelMap) throws Exception {
        QueryProcessor qp = new QueryProcessor();
        RequestParam rp = new RequestParam();
        SearchResult sr = new SearchResult();
        SearchES se = new SearchES();
        MakeModelMap mmm = new MakeModelMap();
        ModelMap model = null;

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
        HashMap<String, Object> pageMap = new HashMap<String, Object>();
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
}