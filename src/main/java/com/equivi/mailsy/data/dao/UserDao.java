package com.equivi.mailsy.data.dao;


import com.equivi.mailsy.data.entity.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.querydsl.QueryDslPredicateExecutor;
import org.springframework.stereotype.Repository;

@Repository
public interface UserDao extends JpaRepository<UserEntity, Long>, QueryDslPredicateExecutor<UserEntity> {

}
