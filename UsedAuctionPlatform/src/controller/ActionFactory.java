package controller;

public class ActionFactory {
	ActionFactory(){}
	
	static Action getAction(String cmd){
		Action action = null;
		switch (cmd) {
			case "indexPage" :
				action = null;
				break;
			case "" :
				break;
		}
		
		return action;
	}
}
