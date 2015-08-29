package com.equivi.mailsy.data.dao;


import com.equivi.mailsy.data.entity.SubscriberContactEntity;
import com.equivi.mailsy.data.entity.SubscriberGroupEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.querydsl.QueryDslPredicateExecutor;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface SubscriberContactDao extends JpaRepository<SubscriberContactEntity, Long>, QueryDslPredicateExecutor<SubscriberContactEntity> {

    List<SubscriberContactEntity> readBySubscriberGroupEntity(SubscriberGroupEntity subscriberGroupEntity);
}
