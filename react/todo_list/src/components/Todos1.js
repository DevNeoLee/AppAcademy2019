import React, { Component } from 'react';

class Todos1 extends Component {
    render() {

        return this.props.todos.map((todo) => (
            <div>
            <h3>
                id: {todo.id}<br />
                title: {todo.title} <br />
                completed:{todo.completed}<br />
            </h3>
            </div>
        ));
    }
}

export default Todos1;
