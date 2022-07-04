package com.evpoly.polyweb.mainPage.dao;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MainPageDAO {
    public int getDayCount();
    public int getWeekCount();
    public int getMonthCount();

    public int getViolationDayCount();

    public int getViolationWeekCount();
    public int getViolationMonthCount();

}
