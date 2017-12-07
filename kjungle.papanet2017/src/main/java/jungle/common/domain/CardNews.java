package jungle.common.domain;

public class CardNews { //카드뉴스 VO
	private String idx;
	private String cid;
	private String fileId;
	private String createdAt;
	private String createdBy;
	private String updatedAt;
	private String updatedBy;
	
	public String getIdx() {
		return idx;
	}
	public void setIdx(String idx) {
		this.idx = idx;
	}
	public String getCid() {
		return cid;
	}
	public void setCid(String cid) {
		this.cid = cid;
	}
	public String getFileId() {
		return fileId;
	}
	public void setFileId(String fileId) {
		this.fileId = fileId;
	}
	public String getCreatedAt() {
		return createdAt;
	}
	public void setCreatedAt(String createdAt) {
		this.createdAt = createdAt;
	}
	public String getCreatedBy() {
		return createdBy;
	}
	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}
	public String getUpdatedAt() {
		return updatedAt;
	}
	public void setUpdatedAt(String updatedAt) {
		this.updatedAt = updatedAt;
	}
	public String getUpdatedBy() {
		return updatedBy;
	}
	public void setUpdatedBy(String updateBy) {
		this.updatedBy = updateBy;
	}
	
	@Override
	public String toString() {
		return "CardNews [idx=" + idx + ", cid=" + cid + ", fileId=" + fileId + ", createdAt=" + createdAt
				+ ", createdBy=" + createdBy + ", updatedAt=" + updatedAt + ", updateBy=" + updatedBy + ", getIdx()="
				+ getIdx() + ", getCid()=" + getCid() + ", getFileId()=" + getFileId() + ", getCreatedAt()="
				+ getCreatedAt() + ", getCreatedBy()=" + getCreatedBy() + ", getUpdatedAt()=" + getUpdatedAt()
				+ ", getUpdateBy()=" + getUpdatedBy() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode()
				+ ", toString()=" + super.toString() + "]";
	}
}
