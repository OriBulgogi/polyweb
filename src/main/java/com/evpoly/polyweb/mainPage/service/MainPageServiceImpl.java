package com.evpoly.polyweb.mainPage.service;


import com.evpoly.polyweb.mainPage.dao.MainPageDAO;
import org.springframework.stereotype.Service;

@Service
public class MainPageServiceImpl implements MainPageService{
    private MainPageDAO mainPageDAO;


    @Override
    public int getDayCount() {
        return mainPageDAO.getDayCount();
    }

    @Override
    public int getWeekCount() {
        return mainPageDAO.getWeekCount();
    }

    @Override
    public int getMonthCount() {
        return mainPageDAO.getMonthCount();
    }

    @Override
    public int getViolationDayCount() {
        return mainPageDAO.getViolationDayCount();
    }

    @Override
    public int getViolationWeekCount() {
        return mainPageDAO.getViolationWeekCount();
    }

    @Override
    public int getViolationMonthCount() {
        return mainPageDAO.getViolationMonthCount();
    }


}
