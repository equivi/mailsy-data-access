package com.equivi.mailsy.data.dao;

import com.equivi.mailsy.data.entity.CampaignEntity;
import com.equivi.mailsy.data.entity.CampaignSubscriberGroupEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.querydsl.QueryDslPredicateExecutor;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CampaignSubscriberGroupDao extends JpaRepository<CampaignSubscriberGroupEntity, Long>, QueryDslPredicateExecutor<CampaignSubscriberGroupEntity> {

    List<CampaignSubscriberGroupEntity> findByCampaignEntity(CampaignEntity campaignEntity);

}
