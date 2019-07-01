const React = require('react')
const ReactDOM = require('react-dom')
const { useState, useRef } = React;

const Question = (props) => {
    return (
        <div>
            <h1>Multiply Quiz</h1>
            <h2>Do you know what is...</h2>
            <h3>{props.num1} times {props.num2} ?</h3>
        </div>
    )
}

const Multiply = () => {
    const [num1, setNum1] = React.useState(Math.ceil(Math.random() * 9)) // destructuring
    const [num2, setNum2] = React.useState(Math.ceil(Math.random() * 9))
    const [value, setValue] = React.useState('')
    const [result, setResult] = React.useState('')
    const [answer, setAnswer] = React.useState('')
    const inputRef = React.useRef(null)


    const onChange = (e) => setValue(e.target.value)

    const onSubmit = (e) => {
        e.preventDefault();
        if (parseInt(value) === num1 * num2) {
            setResult('You got it! : )')
            setNum1(Math.ceil(Math.random() * 9))
            setNum2(Math.ceil(Math.random() * 9))
            setValue('')
            setAnswer(value)
            inputRef.current.focus()
        } else {
            setResult('Incorrect, try again!')
            setValue('')
            setAnswer('')
            inputRef.current.focus()
        }
    }


    return (
        <>
            <Question num1={num1} num2={num2} />
            <form onSubmit={onSubmit} >
                <input ref={inputRef} type='number' value={value} onChange={onChange} />
                <button type='submit'>submit</button>
            </form>
            <div> Answer: {answer}</div>
            <br />
            <div>{result}</div>
        </>
    )
}

module.exports = Multiply;