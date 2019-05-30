import React, { Component } from 'react';

class Todos2 extends Component {
    render() {

        return this.props.abc.map((hoho) => (
            <div>
            <h1>이건 3번째 거란다!</h1>
            <h3>
                id: {hoho.id}<br />
                title: {hoho.title} <br />
                completed:{hoho.completed}<br />
            </h3>
            </div>
        ));
    }
}

export default Todos2;
