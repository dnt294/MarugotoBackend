'use strict';

const verbsReducer = (state = {}, action) => {
  switch (action.type) {
    case "SET_VERBS":
        return {
            verbs: action.verbs,
            filterType: "ALL",
            firstTypeCount: action.verbs.filter(v => v.verb_form.verb_type == 1).length,
            secondTypeCount: action.verbs.filter(v => v.verb_form.verb_type == 2).length,
            allTypeCount: action.verbs.length

        };
    case "FIRST_TYPE_CLICK":
        return Object.assign({}, state, {
                filterType: "FIRST"
            });
    case "SECOND_TYPE_CLICK":
        return Object.assign({}, state, {
                filterType: "SECOND"
            });
    case "ALL_TYPE_CLICK":
        return Object.assign({}, state, {
                filterType: "ALL"
            });
    default:
        return state;
  }
};

module.exports = verbsReducer;
