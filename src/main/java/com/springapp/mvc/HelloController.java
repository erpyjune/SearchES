package com.springapp.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import search.SearchData;
import search.SearchES;

import javax.servlet.http.HttpServletRequest;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;

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
//		String query = request.getParameter("query");
		String orgQuery = new String(request.getParameter("query").getBytes("ISO-8859-1"), "UTF-8");
		String query = URLEncoder.encode(orgQuery,"UTF-8");
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

		// searching...
		se.search();

		ArrayList<SearchData> searchResult = new ArrayList<SearchData>();
		searchResult = se.searchResultParse(se.getCrawlData());

		// make navigation page
		HashMap<String, Object> pageMap = new HashMap<String, Object>();
		pageMap = se.makePageNavigate(from, size);

		modelMap.addAttribute("searchList", searchResult);
		modelMap.addAttribute("pageMap", pageMap);
		modelMap.addAttribute("title","Good Luck!");

		modelMap.addAttribute("from",from);
		modelMap.addAttribute("size",size);
		modelMap.addAttribute("query",query);
		modelMap.addAttribute("orgquery", orgQuery);

		return "search";
	}
}