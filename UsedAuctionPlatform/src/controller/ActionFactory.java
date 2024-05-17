package controller;

import controller.action.AddChatAction;
import controller.action.LoginAction;
import controller.action.SetRateAction;

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
			case "setRateAction" :
				action = new SetRateAction();
				break;
			case "addChatAction" :
				action = new AddChatAction();
				break;
		}
		
		return action;
	}
}
