package com.springapp.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import search.SearchData;
import search.SearchES;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;

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
		String from = request.getParameter("from");
		String size = request.getParameter("size");
		String query = request.getParameter("query");
		if (from==null)  from = "0";
		if (size==null)  size = "10";
		if (query==null) query= "*";

		String prefixUrl = "http://localhost:9200/shop/okmall/_search?";
		StringBuilder sb = new StringBuilder();
		sb.append(prefixUrl);
		sb.append("from="+from);
		sb.append("&size="+size);
		sb.append("&q="+query);

		SearchES se = new SearchES();
		se.setCrawlUrl(sb.toString());
		se.setCrawlEncoding("utf-8");
		se.search();
		// parsing result.

		ArrayList<SearchData> searchResult = new ArrayList<SearchData>();
		searchResult = se.searchResultParse(se.getCrawlData());

		modelMap.addAttribute("searchList", searchResult);
		modelMap.addAttribute("title","Hello SummaryNode!!");

		modelMap.addAttribute("from",from);
		modelMap.addAttribute("size",size);
		modelMap.addAttribute("query",query);

		return "search";
	}
}