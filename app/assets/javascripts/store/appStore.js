import { createStore, combineReducers } from "redux";
import rootReducer from "../reducers/rootReducer";

export default function appStore(initialState){
    return createStore(rootReducer);
}


