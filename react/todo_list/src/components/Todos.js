import React, { Component } from 'react';

class Todos extends Component {
    render() {
        
        return ( this.props.todos.map((todo) => (
            <div>

                {todo.id}. 
                 {todo.title} <br/> 
                completed:{todo.completed}<br/>
            
            
            </div>
            
        )));
    }
}

export default Todos;
