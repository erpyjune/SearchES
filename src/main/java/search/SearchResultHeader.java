package search;

/**
 * Created by baeonejune on 15. 1. 18..
 */
public class SearchResultHeader {
    private int totalResultCount;
    private int listCount;

    public int getTotalResultCount() {
        return totalResultCount;
    }

    public void setTotalResultCount(int totalResultCount) {
        this.totalResultCount = totalResultCount;
    }

    public int getListCount() {
        return listCount;
    }

    public void setListCount(int listCount) {
        this.listCount = listCount;
    }
}
