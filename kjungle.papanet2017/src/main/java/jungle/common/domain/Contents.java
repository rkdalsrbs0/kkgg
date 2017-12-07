package jungle.common.domain;

public class Contents { //컨텐츠 VO
	private String idx;
	private String title;
	private String contentsType;
	private String viewLocation;
	private String viewLocation2;
	private String viewLocation3;
	private String viewYn;
	private String startDate;
	private int thumbFid;
	private String content;
	private int offerFid;
	private String videoUrl;
	private String createdAt;
	private String createBy;
	private String updatedAt;
	private String updateBy;
	private int minLimit;
	private int maxLimit;
	private String fileId;
	private int viewCount;
	private String saveNm;
	private String search;
	private String linkUrl;
	
	
	public String getLinkUrl() {
		return linkUrl;
	}
	public void setLinkUrl(String linkUrl) {
		this.linkUrl = linkUrl;
	}
	public String getSearch() {
		return search;
	}
	public void setSearch(String search) {
		this.search = search;
	}
	public String getSaveNm() {
		return saveNm;
	}
	public void setSaveNm(String saveNm) {
		this.saveNm = saveNm;
	}
	public int getViewCount() {
		return viewCount;
	}
	public void setViewCount(int viewCount) {
		this.viewCount = viewCount;
	}
	public String getFileId() {
		return fileId;
	}
	public void setFileId(String fileId) {
		this.fileId = fileId;
	}
	public String getViewLocation2() {
		return viewLocation2;
	}
	public void setViewLocation2(String viewLocation2) {
		this.viewLocation2 = viewLocation2;
	}
	public String getViewLocation3() {
		return viewLocation3;
	}
	public void setViewLocation3(String viewLocation3) {
		this.viewLocation3 = viewLocation3;
	}
	public String getIdx() {
		return idx;
	}
	public void setIdx(String idx) {
		this.idx = idx;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContentsType() {
		return contentsType;
	}
	public void setContentsType(String contentsType) {
		this.contentsType = contentsType;
	}
	public String getViewLocation() {
		return viewLocation;
	}
	public void setViewLocation(String viewLocation) {
		this.viewLocation = viewLocation;
	}
	public String getViewYn() {
		return viewYn;
	}
	public void setViewYn(String viewYn) {
		this.viewYn = viewYn;
	}
	public int getThumbFid() {
		return thumbFid;
	}
	public void setThumbFid(int thumbFid) {
		this.thumbFid = thumbFid;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getOfferFid() {
		return offerFid;
	}
	public void setOfferFid(int offerFid) {
		this.offerFid = offerFid;
	}
	public String getVideoUrl() {
		return videoUrl;
	}
	public void setVideoUrl(String videoUrl) {
		this.videoUrl = videoUrl;
	}
	public String getCreateBy() {
		return createBy;
	}
	public void setCreateBy(String createBy) {
		this.createBy = createBy;
	}
	public String getUpdateBy() {
		return updateBy;
	}
	public void setUpdateBy(String updateBy) {
		this.updateBy = updateBy;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getCreatedAt() {
		return createdAt;
	}
	public void setCreatedAt(String createdAt) {
		this.createdAt = createdAt;
	}
	public String getUpdatedAt() {
		return updatedAt;
	}
	public void setUpdatedAt(String updatedAt) {
		this.updatedAt = updatedAt;
	}
	public int getMinLimit() {
		return minLimit;
	}
	public void setMinLimit(int minLimit) {
		this.minLimit = minLimit;
	}
	public int getMaxLimit() {
		return maxLimit;
	}
	public void setMaxLimit(int maxLimit) {
		this.maxLimit = maxLimit;
	}
	@Override
	public String toString() {
		return "Contents [idx=" + idx + ", title=" + title + ", contentsType=" + contentsType + ", viewLocation="
				+ viewLocation + ", viewYn=" + viewYn + ", startDate=" + startDate + ", thumbFid=" + thumbFid
				+ ", content=" + content + ", offerFid=" + offerFid + ", videoUrl=" + videoUrl + ", createdAt="
				+ createdAt + ", createBy=" + createBy + ", updatedAt=" + updatedAt + ", updateBy=" + updateBy
				+ ", getIdx()=" + getIdx() + ", getTitle()=" + getTitle() + ", getContentsType()=" + getContentsType()
				+ ", getViewLocation()=" + getViewLocation() + ", getViewYn()=" + getViewYn() + ", getStartDate()="
				+ getStartDate() + ", getThumbFid()=" + getThumbFid() + ", getContent()=" + getContent()
				+ ", getOfferFid()=" + getOfferFid() + ", getVideoUrl()=" + getVideoUrl() + ", getCreatedAt()="
				+ getCreatedAt() + ", getCreateBy()=" + getCreateBy() + ", getUpdatedAt()=" + getUpdatedAt()
				+ ", getUpdateBy()=" + getUpdateBy() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode()
				+ ", toString()=" + super.toString() + "]";
	}
}
