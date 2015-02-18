package search;

import java.util.Vector;

/**
 * Created by baeonejune on 15. 1. 18..
 */
public class SearchResult {

    private Vector<SearchResultItem> searchResultItems;
    private SearchResultHeader searchResultHeader;


    public Vector<SearchResultItem> getSearchResultItems() {
        return searchResultItems;
    }

    public void setSearchResultItems(Vector<SearchResultItem> searchResultItems) {
        this.searchResultItems = searchResultItems;
    }

    public SearchResultHeader getSearchResultHeader() {
        return searchResultHeader;
    }

    public void setSearchResultHeader(SearchResultHeader searchResultHeader) {
        this.searchResultHeader = searchResultHeader;
    }
}
