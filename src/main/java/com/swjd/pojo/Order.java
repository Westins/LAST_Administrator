package com.swjd.pojo;

public class Order {
    private String oId,oNum,gName,gImg,gPrice,cNum,gType,oTime,aAddress,aName,aPhone,userId,oState;

    public String getaName() {
        return aName;
    }

    public void setaName(String aName) {
        this.aName = aName;
    }

    public String getoId() {
        return oId;
    }

    public void setoId(String oId) {
        this.oId = oId;
    }

    @Override
    public String toString() {
        return "Order{" +
                "oId='" + oId + '\'' +
                ", oNum='" + oNum + '\'' +
                ", gName='" + gName + '\'' +
                ", gImg='" + gImg + '\'' +
                ", gPrice='" + gPrice + '\'' +
                ", cNum='" + cNum + '\'' +
                ", gType='" + gType + '\'' +
                ", oTime='" + oTime + '\'' +
                ", aAddress='" + aAddress + '\'' +
                ", aName='" + aName + '\'' +
                ", aPhone='" + aPhone + '\'' +
                ", userId='" + userId + '\'' +
                ", oState='" + oState + '\'' +
                '}';
    }

    public String getoNum() {
        return oNum;
    }

    public void setoNum(String oNum) {
        this.oNum = oNum;
    }

    public String getgName() {
        return gName;
    }

    public void setgName(String gName) {
        this.gName = gName;
    }

    public String getgImg() {
        return gImg;
    }

    public void setgImg(String gImg) {
        this.gImg = gImg;
    }

    public String getgPrice() {
        return gPrice;
    }

    public void setgPrice(String gPrice) {
        this.gPrice = gPrice;
    }

    public String getcNum() {
        return cNum;
    }

    public void setcNum(String cNum) {
        this.cNum = cNum;
    }

    public String getgType() {
        return gType;
    }

    public void setgType(String gType) {
        this.gType = gType;
    }

    public String getoTime() {
        return oTime;
    }

    public void setoTime(String oTime) {
        this.oTime = oTime;
    }

    public String getaAddress() {
        return aAddress;
    }

    public void setaAddress(String aAddress) {
        this.aAddress = aAddress;
    }

    public String getaPhone() {
        return aPhone;
    }

    public void setaPhone(String aPhone) {
        this.aPhone = aPhone;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getoState() {
        return oState;
    }

    public void setoState(String oState) {
        this.oState = oState;
    }

}
