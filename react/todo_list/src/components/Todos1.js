import React, { Component } from 'react';

class Todos1 extends Component {
    render() {

        return this.props.todos.map((hoho) => (
            <div>
                <h1>두번째인디....;;</h1>
            <h3>
                id: {hoho.id}<br />
                title: {hoho.title} <br />
                completed:{hoho.completed}<br />
            </h3>
            </div>
        ));
    }
}

export default Todos1;
