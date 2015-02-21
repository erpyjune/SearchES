package search;

import org.springframework.ui.ModelMap;

import java.util.HashMap;

/**
 * Created by baeonejune on 15. 2. 21..
 */
public class MakeModelMap {
    public ModelMap makeModelMapData(SearchResult sr, RequestParam rp, QueryProcessor qp)
            throws Exception {

        ModelMap model = new ModelMap();
        HashMap<String, Object> pageMap = new HashMap<String, Object>();
        pageMap = qp.makePageNavigate(rp, sr);

        model.addAttribute("searchList", sr.getSearchResultItems());
        model.addAttribute("pageMap", pageMap);
        model.addAttribute("title","Good Luck!");
        model.addAttribute("searchTotalCount",sr.getSearchResultHeader().getTotalResultCount());
        model.addAttribute("searchListCount",sr.getSearchResultHeader().getListCount());

        model.addAttribute("from",rp.getFrom());
        model.addAttribute("size",rp.getSize());
        model.addAttribute("query",rp.getSearchQuery());
        model.addAttribute("originalQuery", rp.getOriginalQuery());
        return model;
    }
}
