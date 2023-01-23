import React, { useState } from 'react';

import "./TranslateExpression.css";

const TranslateExpression = () => {
    // setting variable and input states
    const [expToTranslate, setExpToTranslate] = useState("");
    const [expTranslated, setExpTranslated] = useState("");

    // handling input change
    const handleInputChange = (e) => {
        setExpToTranslate(e.target.value);
    };

    // async function for fetching translation
    async function translateHandler() {
        if (expToTranslate !== "") {
            const response = await fetch(`translation/${expToTranslate}`);
            const data = await response.text();
            console.log(data);
            data == "" ? alert("No translation found.") : setExpTranslated(data);
        } else {
            alert("Input something to translate!")
        }
    }

    return (
        <main >
            <div className="trinterface">
                <textarea className="textarea" type="text" onChange={handleInputChange} value={expToTranslate} rows={3} />
                <button className="button" onClick={translateHandler} >Translate</button>
                <textarea className="textarea" type="text" readOnly="readonly" value={expTranslated} rows={3} />
            </div>
        </main>
    )
}

export default TranslateExpression;