import React, { Component } from 'react';

class Todos2 extends Component {
    render() {

        return this.props.todos.map((todo) => (
            <div>
            <h1>이건 3번째 거란다!</h1>
            <h3>
                id: {todo.id}<br />
                title: {todo.title} <br />
                completed:{todo.completed}<br />
            </h3>
            </div>
        ));
    }
}

export default Todos2;
