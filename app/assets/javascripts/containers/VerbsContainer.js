import React, { Component } from 'react';
import { connect } from 'react-redux';
import { render } from 'react-dom'
import { Provider } from 'react-redux';
import { bindActionCreators } from 'redux';

import appStore from '../store/appStore';
import * as VerbActions from '../actions/verbs';

import VerbsTable from '../components/VerbsTable/VerbsTable';
import Counter from '../components/VerbsTable/Counter';

function mapStateToProps(state) {
    return {
        verbs_table: state.verbs_table
    }
}

function mapDispatchToProps(dispatch){
    return bindActionCreators(VerbActions, dispatch);
}

class VerbsContainer extends Component {

    render(){
        const { verbs_table, onFirstTypeClick, onSecondTypeClick, onAllTypeClick } = this.props;

        let verbs = verbs_table.verbs;
        let filterType = verbs_table.filterType;
        let firstTypeCount = verbs_table.firstTypeCount;
        let secondTypeCount = verbs_table.secondTypeCount;
        let allTypeCount = verbs_table.allTypeCount;

        return (
            <div className="padding-2-size">
                    <Counter firstTypeCount={firstTypeCount}
                        secondTypeCount={secondTypeCount}
                        allTypeCount={allTypeCount}
                        onFirstTypeClick={onFirstTypeClick}
                        onSecondTypeClick={onSecondTypeClick}
                        onAllTypeClick={onAllTypeClick}
                        filterType={filterType}/>
                    <VerbsTable verbs={verbs} filterType={filterType}/>
                </div>
        )

    }
}

export default connect(mapStateToProps, mapDispatchToProps)(VerbsContainer);