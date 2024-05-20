package controller;

import controller.action.AddChatAction;
import controller.action.AddProductAction;
import controller.action.LoginAction;
import controller.action.SetRateAction;
import controller.page.MainUI;

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
			case "setRateAction" :
				action = new SetRateAction();
				break;
			case "addChatAction" :
				action = new AddChatAction();
				break;
			case "addProductAction" :
				action = new AddProductAction();
				break;
		}
		
		return action;
	}
}
