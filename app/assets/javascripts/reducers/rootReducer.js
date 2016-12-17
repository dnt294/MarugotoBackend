'use strict';

// list of reducers
import verbsReducer from './verbsReducer';

const rootReducer = (state = {}, action) => {
    return {
        verbs_table: verbsReducer(state.verbs_table, action)
    }
};

export default rootReducer;

