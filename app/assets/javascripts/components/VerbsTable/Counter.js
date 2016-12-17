import React, { Component, PropTypes } from 'react';
import { connect } from 'react-redux';

const activeTab = (filterType, tabIndex) => {
    switch(filterType){
        case "FIRST":
            return (tabIndex == 1) ? "active item" : "item";
        case "SECOND":
            return (tabIndex == 2) ? "active item" : "item";
        case "ALL":
            return (tabIndex == 0) ? "active item" : "item";
    }
};

class Counter extends Component {
    render(){
        const { onFirstTypeClick, onSecondTypeClick, onAllTypeClick,
            firstTypeCount, secondTypeCount, allTypeCount,
            filterType
        } = this.props;

        return (
            <div className="ui mini compact menu">
                <a className={activeTab(filterType, 0)} onClick={onAllTypeClick}>
                    <span>Tổng</span>
                    <div className="ui teal left pointing label">{allTypeCount}</div>
                </a>
                <a className={activeTab(filterType, 1)} onClick={onFirstTypeClick}>
                    <span>Loại 1</span>
                    <div className="ui label">{firstTypeCount}</div>
                </a>
                <a className={activeTab(filterType, 2)} onClick={onSecondTypeClick}>
                    <span>Loại 2</span>
                    <div className="ui label">{secondTypeCount}</div>
                </a>
            </div>
        );
    }
}

Counter.propTypes = {
    onFirstTypeClick: PropTypes.func.isRequired,
    onSecondTypeClick: PropTypes.func.isRequired,
    onAllTypeClick: PropTypes.func.isRequired
}

export default Counter;