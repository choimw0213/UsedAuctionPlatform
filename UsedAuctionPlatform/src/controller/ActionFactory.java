package controller;

import controller.action.AddChatAction;
import controller.action.AddProductAction;
import controller.action.LoginAction;
import controller.action.SetRateAction;
import controller.action.SortAction;
import controller.page.AddProductUI;
import controller.page.ChatListUI;
import controller.page.MainManagerUI;
import controller.page.MainUI;
import controller.page.NotiUI;
import controller.page.ProductInfoUI;

public class ActionFactory {
	ActionFactory(){}
	
	static Action getAction(String cmd){
		Action action = null;
		switch (cmd) {
			case "loginAction" :
				action = new LoginAction();
				break;
			case "joinAction" :
				action = null;
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
		}
		
		return action;
	}
}
