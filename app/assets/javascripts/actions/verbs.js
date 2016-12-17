const FIRST_TYPE_CLICK = 'FIRST_TYPE_CLICK';
const SECOND_TYPE_CLICK = 'SECOND_TYPE_CLICK';
const ALL_TYPE_CLICK = 'ALL_TYPE_CLICK';
const SET_VERBS = 'SET_VERBS';

function setVerbs(verbs) {
    return {
        type: SET_VERBS,
        verbs: verbs
    }
}

function onFirstTypeClick(verbs){
    return {
        type: FIRST_TYPE_CLICK,
        verbs: verbs
    }
}
function onSecondTypeClick(verbs){
    return {
        type: SECOND_TYPE_CLICK,
        verbs: verbs
    }
}
function onAllTypeClick(verbs){
    return {
        type: ALL_TYPE_CLICK,
        verbs: verbs
    }
}

module.exports = { FIRST_TYPE_CLICK, SECOND_TYPE_CLICK, ALL_TYPE_CLICK, SET_VERBS,
    setVerbs, onFirstTypeClick, onSecondTypeClick, onAllTypeClick
 }