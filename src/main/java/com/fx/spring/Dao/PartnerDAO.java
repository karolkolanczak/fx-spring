package com.fx.spring.Dao;

import com.fx.spring.Entity.ClosedTradesTransaction;
import com.fx.spring.Entity.Partner;
import com.fx.spring.Entity.User;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by a on 25/07/2017.
 */
public interface PartnerDAO {
    public List<Partner> getListOfAllPartners();
    public void addPartner(Partner partner);
    public Partner getPartnerById(int PartnerId);
    public void deletePartnerById(int PartnerId);
    public void updatePartner(Partner updatedPartner);
    public List<ClosedTradesTransaction> getClosedTradesTransactionslist(ClosedTradesTransaction closedTradesTransaction);
    public void addclosedTradesTransactionslist(List<ClosedTradesTransaction> closedTradesTransactionslist);
    public List<ClosedTradesTransaction> getClosedTradesTransactionslistFiltered(ClosedTradesTransaction closedTradesTransaction, String closedTradesFrom, String closedTradesTo);
}
