import React, { Component } from 'react'

export class AddTodo extends Component {
    render(){
        return (
           <form>
               <input 
               type="text" 
               name="title"
               placeholder="Add Todo ..." />
                <input
                    type="submit"
                    name=""
                    placeholder="Add Todo ..." />

           </form>
        )
    }
}

export default AddTodo
