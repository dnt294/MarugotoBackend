import React, { Component } from 'react';
import { connect } from 'react-redux';
import { render } from 'react-dom'
import { Provider } from 'react-redux';

import appStore from '../store/appStore';
import {setVerbs, onFirstTypeClick, onSecondTypeClick, onAllTypeClick} from '../actions/verbs';

import VerbsContainer from './VerbsContainer';

const store = appStore();

export default class VerbsPage extends Component {

    componentWillMount(){
        store.dispatch(setVerbs(this.props.verbs));
    }

    render(){
        return (
            <Provider store={store}>
                <VerbsContainer/>
            </Provider>
        )

    }
}