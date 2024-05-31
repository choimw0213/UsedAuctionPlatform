package com.kosta.controller;

import com.kosta.controller.action.AddChatAction;
import com.kosta.controller.action.AddProductAction;
import com.kosta.controller.action.BidAction;
import com.kosta.controller.action.BuyListAction;
import com.kosta.controller.action.CategoryAction;
import com.kosta.controller.action.DeleteMyInfoAction;
import com.kosta.controller.action.FindIDAction;
import com.kosta.controller.action.FindPWAction;
import com.kosta.controller.action.GetChatAction;
import com.kosta.controller.action.GetChatListAction;
import com.kosta.controller.action.GetNotiListAction;
import com.kosta.controller.action.GetUnreadAction;
import com.kosta.controller.action.HopeAction;
import com.kosta.controller.action.IdCheckAction;
import com.kosta.controller.action.JoinAction;
import com.kosta.controller.action.LoginAction;
import com.kosta.controller.action.LogoutAction;
import com.kosta.controller.action.MyPointAction;
import com.kosta.controller.action.NickCheckAction;
import com.kosta.controller.action.ReportAction;
import com.kosta.controller.action.SearchAction;
import com.kosta.controller.action.SellListAction;
import com.kosta.controller.action.SessionNickCheckAction;
import com.kosta.controller.action.SetMyInfoAction;
import com.kosta.controller.action.SetPWAction;
import com.kosta.controller.action.SetRateAction;
import com.kosta.controller.action.SortAction;
import com.kosta.controller.page.AddProductUI;
import com.kosta.controller.page.BuyListUI;
import com.kosta.controller.page.ChatListUI;
import com.kosta.controller.page.ChatUI;
import com.kosta.controller.page.ErrorUI;
import com.kosta.controller.page.FindIDUI;
import com.kosta.controller.page.FindPWUI;
import com.kosta.controller.page.JoinUI;
import com.kosta.controller.page.LoginUI;
import com.kosta.controller.page.MainManagerUI;
import com.kosta.controller.page.MainUI;
import com.kosta.controller.page.NotiUI;
import com.kosta.controller.page.ProductInfoUI;
import com.kosta.controller.page.SellListUI;
import com.kosta.controller.page.SetMyInfoUI;
import com.kosta.controller.page.SetPWUI;
import com.kosta.controller.page.myPageUI;

public class ActionFactory {
	ActionFactory(){}
	
	static Action getAction(String cmd){
		Action action = null;
		switch (cmd) {
			case "loginUI" :
				action = new LoginUI();
				break;
			case "loginAction" :
				action = new LoginAction();
				break;
			case "joinAction" :
				action = new JoinAction();
				break;
			case "joinUI" :
				action = new JoinUI();
				break;
			case "mainUI" :
				action = new MainUI();
				break;
			case "mainManagerUI" :
				action = new MainManagerUI();
				break;
			case "setRateAction" :
				action = new SetRateAction();
				break;
			case "chatListUI" :
				action = new ChatListUI();
				break;
			case "chatUI" :
				action = new ChatUI();
				break;
			case "addChatAction" :
				action = new AddChatAction();
				break;
			case "getUnreadAction" :
				action = new GetUnreadAction();
				break;
			case "getChatAction" :
				action = new GetChatAction();
				break;
			case "getChatListAction" :
				action = new GetChatListAction();
				break;
			case "addProductUI" :
				action = new AddProductUI();
				break;
			case "addProductAction" :
				action = new AddProductAction();
				break;
			case "notiUI" :
				action = new NotiUI();
				break;
			case "sortAction":
				action = new SortAction();
				break;
			case "productInfoUI":
				action = new ProductInfoUI();
				break;
			case "setMyInfoAction" :
				action = new SetMyInfoAction();
				break;
			case "setMyInfoUI" :
				action = new SetMyInfoUI();
				break;
			case "logoutAction" :
				action = new LogoutAction();
				break;
			case "deleteMyInfoAction" :
				action = new DeleteMyInfoAction();
				break;
			case "findIDUI" :
				action = new FindIDUI();
				break;
			case "findIDAction" :
				action = new FindIDAction();
				break;	
			case "setPWUI" :
				action = new SetPWUI();
				break;
			case "setPWAction" :
				action = new SetPWAction();
				break;	
			case "categoryAction":
				action = new CategoryAction();
				break;
			case "hopeAction":
				action = new HopeAction();
				break;
			case "searchAction":
				action = new SearchAction();
				break;
			case "sellListUI" :
				action = new SellListUI();
				break;				
			case "sellListAction" :
				action = new SellListAction();
				break;
			case "buyListUI" :
				action = new BuyListUI();
				break;
			case "buyListAction" :
				action = new BuyListAction();
				break;
			case "bidAction":
				action = new BidAction();
				break;
			case "findPWUI" :
				action = new FindPWUI();
				break;
			case "findPWAction" :
				action = new FindPWAction();
				break;
			case "myPointAction" :
				action = new MyPointAction();
				break;
			case "myPageUI" :
				action = new myPageUI();
				break;		
			case "idCheckAction" :
				action = new IdCheckAction();
				break;
			case "reportAction":
				action = new ReportAction();
				break;
			case "nickCheckAction" :
				action = new NickCheckAction();
				break;
			case "getNotiListAction" :
				action = new GetNotiListAction();
				break;
			case "sessionNickCheckAction":
				action = new SessionNickCheckAction();
				break;
			default:
				action = new ErrorUI();
				break;
		}
		
		
		return action;
	}
}
