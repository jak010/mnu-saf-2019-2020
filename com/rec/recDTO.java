package rec;

public class recDTO {
	// λ³?? κ°μ²΄
	private int recSeq;				// κΈ°λ‘μ½λ
	private String tankId;				// ?μ‘°ID
	private int farmId;				// ???₯ID
	private int fishId;				// ??? λ³΄ID
	private String state;			// ??
	private String yrCode;			// ?΄?μ½λκΈ°λ‘
	private String sensorDate;		// μΈ‘μ ?Ό?
	private Double doRec;			// μΈ‘μ  DO(?©μ‘? ?°?)
	private Double wtRec;			// μΈ‘μ  wt(??¨)
	private Double psuRec;			// μΈ‘μ  psu(?Ό?)
	private Double phRec;			// μΈ‘μ  ph(?°?)
	private Double nh4Rec;			// μΈ‘μ  nh4(?λͺ¨λ?)
	private Double no2Rec;			// μΈ‘μ  no2(?μ§μ°)
	private String regDate;			// ? λ³΄λ±λ‘μΌ
	private String regId;			// ? λ³΄λ±λ‘μ
	private String lastUptdate;		// μ΅μ’?? ?Ό
	private String lastUptId;		// μ΅μ’?? ?
	private String remark;			// λΉκ³ 
	
	public int getRecSeq() {
		return recSeq;
	}
	public void setRecSeq(int recSeq) {
		this.recSeq = recSeq;
	}
	public String getTankId() {
		return tankId;
	}
	public void setTankId(String tankId) {
		this.tankId = tankId;
	}
	public int getFarmId() {
		return farmId;
	}
	public void setFarmId(int farmId) {
		this.farmId = farmId;
	}
	public int getFishId() {
		return fishId;
	}
	public void setFishId(int fishId) {
		this.fishId = fishId;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getYrCode() {
		return yrCode;
	}
	public void setYrCode(String yrCode) {
		this.yrCode = yrCode;
	}
	public String getSensorDate() {
		return sensorDate;
	}
	public void setSensorDate(String sensorDate) {
		this.sensorDate = sensorDate;
	}
	public Double getDoRec() {
		return doRec;
	}
	public void setDoRec(Double doRec) {
		this.doRec = doRec;
	}
	public Double getWtRec() {
		return wtRec;
	}
	public void setWtRec(Double wtRec) {
		this.wtRec = wtRec;
	}
	public Double getPsuRec() {
		return psuRec;
	}
	public void setPsuRec(Double psuRec) {
		this.psuRec = psuRec;
	}
	public Double getPhRec() {
		return phRec;
	}
	public void setPhRec(Double phRec) {
		this.phRec = phRec;
	}
	public Double getNh4Rec() {
		return nh4Rec;
	}
	public void setNh4Rec(Double nh4Rec) {
		this.nh4Rec = nh4Rec;
	}
	public Double getNo2Rec() {
		return no2Rec;
	}
	public void setNo2Rec(Double no2Rec) {
		this.no2Rec = no2Rec;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	public String getRegId() {
		return regId;
	}
	public void setRegId(String regId) {
		this.regId = regId;
	}
	public String getLastUptdate() {
		return lastUptdate;
	}
	public void setLastUptdate(String lastUptdate) {
		this.lastUptdate = lastUptdate;
	}
	public String getLastUptId() {
		return lastUptId;
	}
	public void setLastUptId(String lastUptId) {
		this.lastUptId = lastUptId;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
}
