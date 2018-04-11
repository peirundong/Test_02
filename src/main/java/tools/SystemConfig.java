package tools;

/**
 * Created by Mr.Sun on 2017/12/1.
 */
public class SystemConfig {
    /**
     * 云通信短信平台账户Account Sid
     */
    private String smsAccountSid;
    /**
     * 云通信短信平台账户Auth Toke
     */
    private String smsAuthToken;
    /**
     * 云通信短信平台账户App ID
     */
    private String smsAppID;
    /**
     * 云通信短信平台Server IP
     */
    private String smsServerIP;
    /**
     * 云通信短信平台Server Port
     */
    private String smsServerPort;

    public String getSmsAccountSid() {
        return smsAccountSid;
    }

    public void setSmsAccountSid(String smsAccountSid) {
        this.smsAccountSid = smsAccountSid;
    }

    public String getSmsAuthToken() {
        return smsAuthToken;
    }

    public void setSmsAuthToken(String smsAuthToken) {
        this.smsAuthToken = smsAuthToken;
    }

    public String getSmsAppID() {
        return smsAppID;
    }

    public void setSmsAppID(String smsAppID) {
        this.smsAppID = smsAppID;
    }

    public String getSmsServerIP() {
        return smsServerIP;
    }

    public void setSmsServerIP(String smsServerIP) {
        this.smsServerIP = smsServerIP;
    }

    public String getSmsServerPort() {
        return smsServerPort;
    }

    public void setSmsServerPort(String smsServerPort) {
        this.smsServerPort = smsServerPort;
    }
}
