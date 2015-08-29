package com.equivi.mailsy.data.entity;


import javax.persistence.*;
import java.util.Date;
import java.util.List;

@Entity
@Table(name = "cm01_campaign")
public class CampaignEntity extends AuditableEntity {
    private static final long serialVersionUID = 3147431369479751792L;

    //This uuid as identifier at external party such as com.equivi.channel.email.mailgun
    @Column(name = "campaign_uuid", length = 50)
    private String campaignUUID;

    @Column(name = "campaign_name", length = 100)
    private String campaignName;

    @Column(name = "email_from", length = 50)
    private String emailFrom;

    @Column(name = "email_subject", length = 100)
    private String emailSubject;

    @Column(name = "email_content", length = 500)
    private String emailContent;

    @Column(name = "campaign_status", length = 1)
    private CampaignStatus campaignStatus;

    @Column(name = "scheduled_send_date")
    private Date scheduledSendDate;

    @OneToMany(fetch = FetchType.LAZY)
    @JoinColumn(name = "subscriber_group_id")
    private List<CampaignSubscriberGroupEntity> campaignSubscriberGroupEntities;


    public String getCampaignUUID() {
        return campaignUUID;
    }

    public void setCampaignUUID(String campaignUUID) {
        this.campaignUUID = campaignUUID;
    }

    public String getCampaignName() {
        return campaignName;
    }

    public void setCampaignName(String campaignName) {
        this.campaignName = campaignName;
    }

    public String getEmailSubject() {
        return emailSubject;
    }

    public void setEmailSubject(String emailSubject) {
        this.emailSubject = emailSubject;
    }

    public String getEmailContent() {
        return emailContent;
    }

    public void setEmailContent(String emailContent) {
        this.emailContent = emailContent;
    }

    public Date getScheduledSendDate() {
        return scheduledSendDate;
    }

    public void setScheduledSendDate(Date scheduledSendDate) {
        this.scheduledSendDate = scheduledSendDate;
    }

    public List<CampaignSubscriberGroupEntity> getCampaignSubscriberGroupEntities() {
        return campaignSubscriberGroupEntities;
    }

    public void setCampaignSubscriberGroupEntities(List<CampaignSubscriberGroupEntity> campaignSubscriberGroupEntities) {
        this.campaignSubscriberGroupEntities = campaignSubscriberGroupEntities;
    }

    public CampaignStatus getCampaignStatus() {
        return campaignStatus;
    }

    public void setCampaignStatus(CampaignStatus campaignStatus) {
        this.campaignStatus = campaignStatus;
    }


    public String getEmailFrom() {
        return emailFrom;
    }

    public void setEmailFrom(String emailFrom) {
        this.emailFrom = emailFrom;
    }
}
