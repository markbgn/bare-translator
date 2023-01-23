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
            setExpTranslated(data);
        } else {
            console.log("Input is empty");
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