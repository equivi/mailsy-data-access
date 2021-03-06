package com.equivi.mailsy.data.entity;


import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "ts03_subscriber_contact")
public class SubscriberContactEntity extends AuditableEntity {

    private static final long serialVersionUID = 6393807100057775320L;

    @ManyToOne
    @JoinColumn(name = "subscribe_group_id")
    private SubscriberGroupEntity subscriberGroupEntity;

    @ManyToOne
    @JoinColumn(name = "subscribe_id")
    private ContactEntity contactEntity;

    public SubscriberGroupEntity getSubscriberGroupEntity() {
        return subscriberGroupEntity;
    }

    public void setSubscriberGroupEntity(SubscriberGroupEntity subscriberGroupEntity) {
        this.subscriberGroupEntity = subscriberGroupEntity;
    }

    public ContactEntity getContactEntity() {
        return contactEntity;
    }

    public void setContactEntity(ContactEntity contactEntity) {
        this.contactEntity = contactEntity;
    }
}
