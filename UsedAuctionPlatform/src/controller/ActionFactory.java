package controller;

import controller.action.AddChatAction;
import controller.action.AddProductAction;
import controller.action.DeleteMyInfoAction;
import controller.action.FindIDAction;
import controller.action.JoinAction;
import controller.action.LoginAction;
import controller.action.LogoutAction;
import controller.action.SetMyInfoAction;
import controller.action.SetPWAction;
import controller.action.SetRateAction;
import controller.action.SortAction;
import controller.page.AddProductUI;
import controller.page.ChatListUI;
import controller.page.FindIDUI;
import controller.page.JoinUI;
import controller.page.LoginUI;
import controller.page.MainManagerUI;
import controller.page.MainUI;
import controller.page.NotiUI;
import controller.page.ProductInfoUI;
import controller.page.SetMyInfoUI;
import controller.page.SetPWUI;

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
			case "addChatAction" :
				action = new AddChatAction();
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
		}
		
		return action;
	}
}
