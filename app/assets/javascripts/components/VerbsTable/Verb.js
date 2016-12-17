import React from "react";

const Verb = ({verb}) => (

    <tr>
        <td>{verb.lesson}</td>
        <td>{verb.meaning}</td>
        <td>{verb.word}</td>
        <td>{verb.kanji_version}</td>
        <td>{verb.verb_form.dictionary_form}</td>
        <td>{verb.verb_form.te_form}</td>
        <td>{verb.verb_form.ta_form}</td>
        <td>{verb.verb_form.nai_form}</td>
    </tr>

);

export default Verb;