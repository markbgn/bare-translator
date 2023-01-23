import React, { useState } from 'react';

const TranslateExpression = () => {
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
        <main>
            <textarea type="text" onChange={handleInputChange} value={expToTranslate} rows={3} />
            <button onClick={translateHandler} >Translate</button>
            <textarea type="text" readOnly="readonly" value={expTranslated} rows={3} />
        </main>
    )
}

export default TranslateExpression;