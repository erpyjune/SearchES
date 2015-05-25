package search;

/**
 * Created by baeonejune on 15. 1. 4..
 */
public class SearchResultItem {
    public String score;
    public String docid;
    public String productName;
    public String brandName;
    public String contentUrl;
    public String thumbUrl;
    public String thumbUrlBig;
    public String orgPrice;
    public String salePrice;
    public String salePer;
    public String cpName;
    public String keyWord;


    public String getDocid() {
        return docid;
    }

    public void setDocid(String docid) {
        this.docid = docid;
    }

    public String getProductName() {
        return productName;
    }

    public String getScore() {
        return score;
    }

    public void setScore(String score) {
        this.score = score;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getBrandName() {
        return brandName;
    }

    public void setBrandName(String brandName) {
        this.brandName = brandName;
    }

    public String getContentUrl() {
        return contentUrl;
    }

    public void setContentUrl(String contentUrl) {
        this.contentUrl = contentUrl;
    }

    public String getThumbUrl() {
        return thumbUrl;
    }

    public void setThumbUrl(String thumbUrl) {
        this.thumbUrl = thumbUrl;
    }

    public String getThumbUrlBig() {
        return thumbUrlBig;
    }

    public void setThumbUrlBig(String thumbUrlBig) {
        this.thumbUrlBig = thumbUrlBig;
    }

    public String getOrgPrice() {
        return orgPrice;
    }

    public void setOrgPrice(String orgPrice) {
        this.orgPrice = orgPrice;
    }

    public String getSalePrice() {
        return salePrice;
    }

    public void setSalePrice(String salePrice) {
        this.salePrice = salePrice;
    }

    public String getSalePer() {
        return salePer;
    }

    public void setSalePer(String salePer) {
        this.salePer = salePer;
    }

    public String getCpName() {
        return cpName;
    }

    public void setCpName(String cpName) {
        this.cpName = cpName;
    }

    public String getKeyWord() {
        return keyWord;
    }

    public void setKeyWord(String keyWord) {
        this.keyWord = keyWord;
    }
}
