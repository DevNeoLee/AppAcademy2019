import React, { Component } from 'react';

class Todos extends Component {
    render() {
        
        return ( this.props.todos.map((todo) => (
            <div>
                <h1>hmm</h1>
            <h3>
                #: {todo.id}<br/> 
                title: {todo.title} <br/> 
                completed:{todo.completed}<br/>
            </h3>
            <h1>올라 올라 {this.props.da[0].id} </h1>
            </div>
            
        )));
    }
}

export default Todos;
