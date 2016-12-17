import React, { Component, PropTypes } from 'react';
import Verb from './Verb';

const filterVerbs = (filterType, verbs) => {
    switch(filterType){
        case "FIRST":
            return verbs.filter(v => v.verb_form.verb_type == 1);
        case "SECOND":
            return verbs.filter(v => v.verb_form.verb_type == 2);
        case "ALL":
            return verbs;
    }
};

class VerbsTable extends Component {

    render(){
        let verbs = filterVerbs(this.props.filterType, this.props.verbs);

        return (
            <table className="ui celled padded unstackable structured table">
                <thead>
                    <tr>
                        <th className="one wide center aligned">Lesson</th>
                        <th className="wide">Meaning</th>
                        <th className="wide center aligned">Word</th>
                        <th className="wide center aligned">Kanji Version</th>
                        <th className="wide center aligned">Dictionary</th>
                        <th className="wide center aligned">Te</th>
                        <th className="wide center aligned">Ta</th>
                        <th className="wide center aligned">Nai</th>
                    </tr>
                </thead>
                <tbody>
                    { verbs.map(verb => ( <Verb verb={verb} key={verb.id}/>))}
                </tbody>
            </table>
        );
    }
}

export default VerbsTable;