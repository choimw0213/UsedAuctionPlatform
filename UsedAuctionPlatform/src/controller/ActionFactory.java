package controller;

public class ActionFactory {
	ActionFactory(){}
	
	static Action getAction(String cmd){
		Action action = null;
		switch (cmd) {
			case "loginAction" :
				action = null;
				break;
			case "joinAction" :
				action = null;
				break;
		}
		
		return action;
	}
}
