package beans;

public class campDataBean {

	private int campCarId; //캠핑카 식별번호
	private String campCarName; //캠핑카 이름
	private String campCarType; //캠핑카 종류
	private int campCarNumber; //차량번호
	private String campCarDate; //캠핑카 등록일자
	private int peopleRide; //승차인원수
	private int carRentalCost; //대여비용
	private int rentalStatus; //대여가능 여부 가능=0 불가능=1을 반환
	
	
	private int compId; //회사 식별번호
	private String compName; //회사 이름
	private String compAddress; //회사 주소
	private String compCall; //회사 전화번호
	private String compManager; //회사 담당자
	private String compEmail; //담당자 이메일
	
	private int repairShopId; //정비소 식별번호
	private String repairShopName; //정비소 이름
	private String repairShopAddress; //정비소 주소
	private String repairShopCall; //정비소 전화번호
	private String repairManager; //정비소 담당자
	private String repairManagerEmail; //담당자 이메일
	
	private int repairNumber; //정비이력 식별번호
	private String repairHistory; //정비내역
	private String repairDate; //정비날짜
	private int repairCost; //정비이용
	private String repairPayDate; //정비납입기한
	private String repairEtcHistory; //기타정비내역
	
	private int rentalNumber; //대여 식별번호
	private String rentalStart; //대여 시작일
	private String rentalEnd; //대여 종료일
	private String rentalTerm; //대여 기간
	private int rentalCost; //청구요금
	private String rentalPayDate; //대여납입기한
	private String rentalEtcHistory; //기타청구내역
	private int rentalEtcCost; //기타청구요금
	
	private String licenseNumber; //면허증 번호(고객식별번호)
	private String custName; //고객성명
	private String custAddress; //고객주소
	private String custCall; //고객 전화번호
	private String custEmail; //고객 이메일 및 아이디
	private String passwd; //고객 비밀번호
	public int getCampCarId() {
		return campCarId;
	}
	public void setCampCarId(int campCarId) {
		this.campCarId = campCarId;
	}
	public String getCampCarName() {
		return campCarName;
	}
	public void setCampCarName(String campCarName) {
		this.campCarName = campCarName;
	}
	public String getCampCarType() {
		return campCarType;
	}
	public void setCampCarType(String campCarType) {
		this.campCarType = campCarType;
	}
	public int getCampCarNumber() {
		return campCarNumber;
	}
	public void setCampCarNumber(int campCarNumber) {
		this.campCarNumber = campCarNumber;
	}
	public String getCampCarDate() {
		return campCarDate;
	}
	public void setCampCarDate(String campCarDate) {
		this.campCarDate = campCarDate;
	}
	public int getPeopleRide() {
		return peopleRide;
	}
	public void setPeopleRide(int peopleRide) {
		this.peopleRide = peopleRide;
	}
	public int getCarRentalCost() {
		return carRentalCost;
	}
	public void setCarRentalCost(int carRentalCost) {
		this.carRentalCost = carRentalCost;
	}
	public int getRentalStatus() {
		return rentalStatus;
	}
	public void setRentalStatus(int rentalStatus) {
		this.rentalStatus = rentalStatus;
	}
	public int getCompId() {
		return compId;
	}
	public void setCompId(int compId) {
		this.compId = compId;
	}
	public String getCompName() {
		return compName;
	}
	public void setCompName(String compName) {
		this.compName = compName;
	}
	public String getCompAddress() {
		return compAddress;
	}
	public void setCompAddress(String compAddress) {
		this.compAddress = compAddress;
	}
	public String getCompCall() {
		return compCall;
	}
	public void setCompCall(String compCall) {
		this.compCall = compCall;
	}
	public String getCompManager() {
		return compManager;
	}
	public void setCompManager(String compManager) {
		this.compManager = compManager;
	}
	public String getCompEmail() {
		return compEmail;
	}
	public void setCompEmail(String compEmail) {
		this.compEmail = compEmail;
	}
	public int getRepairShopId() {
		return repairShopId;
	}
	public void setRepairShopId(int repairShopId) {
		this.repairShopId = repairShopId;
	}
	public String getRepairShopName() {
		return repairShopName;
	}
	public void setRepairShopName(String repairShopName) {
		this.repairShopName = repairShopName;
	}
	public String getRepairShopAddress() {
		return repairShopAddress;
	}
	public void setRepairShopAddress(String repairShopAddress) {
		this.repairShopAddress = repairShopAddress;
	}
	public String getRepairShopCall() {
		return repairShopCall;
	}
	public void setRepairShopCall(String repairShopCall) {
		this.repairShopCall = repairShopCall;
	}
	public String getRepairManager() {
		return repairManager;
	}
	public void setRepairManager(String repairManager) {
		this.repairManager = repairManager;
	}
	public String getRepairManagerEmail() {
		return repairManagerEmail;
	}
	public void setRepairManagerEmail(String repairManagerEmail) {
		this.repairManagerEmail = repairManagerEmail;
	}
	public int getRepairNumber() {
		return repairNumber;
	}
	public void setRepairNumber(int repairNumber) {
		this.repairNumber = repairNumber;
	}
	public String getRepairHistory() {
		return repairHistory;
	}
	public void setRepairHistory(String repairHistory) {
		this.repairHistory = repairHistory;
	}
	public String getRepairDate() {
		return repairDate;
	}
	public void setRepairDate(String repairDate) {
		this.repairDate = repairDate;
	}
	public int getRepairCost() {
		return repairCost;
	}
	public void setRepairCost(int repairCost) {
		this.repairCost = repairCost;
	}
	public String getRepairPayDate() {
		return repairPayDate;
	}
	public void setRepairPayDate(String repairPayDate) {
		this.repairPayDate = repairPayDate;
	}
	public String getRepairEtcHistory() {
		return repairEtcHistory;
	}
	public void setRepairEtcHistory(String repairEtcHistory) {
		this.repairEtcHistory = repairEtcHistory;
	}
	public int getRentalNumber() {
		return rentalNumber;
	}
	public void setRentalNumber(int rentalNumber) {
		this.rentalNumber = rentalNumber;
	}
	public String getRentalStart() {
		return rentalStart;
	}
	public void setRentalStart(String rentalStart) {
		this.rentalStart = rentalStart;
	}
	public String getRentalEnd() {
		return rentalEnd;
	}
	public void setRentalEnd(String rentalEnd) {
		this.rentalEnd = rentalEnd;
	}
	public String getRentalTerm() {
		return rentalTerm;
	}
	public void setRentalTerm(String rentalTerm) {
		this.rentalTerm = rentalTerm;
	}
	public int getRentalCost() {
		return rentalCost;
	}
	public void setRentalCost(int rentalCost) {
		this.rentalCost = rentalCost;
	}
	public String getRentalPayDate() {
		return rentalPayDate;
	}
	public void setRentalPayDate(String rentalPayDate) {
		this.rentalPayDate = rentalPayDate;
	}
	public String getRentalEtcHistory() {
		return rentalEtcHistory;
	}
	public void setRentalEtcHistory(String rentalEtcHistory) {
		this.rentalEtcHistory = rentalEtcHistory;
	}
	public int getRentalEtcCost() {
		return rentalEtcCost;
	}
	public void setRentalEtcCost(int rentalEtcCost) {
		this.rentalEtcCost = rentalEtcCost;
	}
	public String getLicenseNumber() {
		return licenseNumber;
	}
	public void setLicenseNumber(String licenseNumber) {
		this.licenseNumber = licenseNumber;
	}
	public String getCustName() {
		return custName;
	}
	public void setCustName(String custName) {
		this.custName = custName;
	}
	public String getCustAddress() {
		return custAddress;
	}
	public void setCustAddress(String custAddress) {
		this.custAddress = custAddress;
	}
	public String getCustCall() {
		return custCall;
	}
	public void setCustCall(String custCall) {
		this.custCall = custCall;
	}
	public String getCustEmail() {
		return custEmail;
	}
	public void setCustEmail(String custEmail) {
		this.custEmail = custEmail;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	

	
	
	
}
